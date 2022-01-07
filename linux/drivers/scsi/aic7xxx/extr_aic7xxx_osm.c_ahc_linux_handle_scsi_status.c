
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
typedef size_t u_int ;
struct scsi_sense_data {int dummy; } ;
struct scsi_device {TYPE_1__* sdev_target; int lun; } ;
struct scsi_cmnd {size_t* sense_buffer; int result; } ;
struct scb {int flags; struct scsi_cmnd* io_ctx; } ;
struct ahc_softc {int our_id; } ;
struct ahc_linux_device {size_t active; int openings; size_t tags_on_last_queuefull; size_t maxtags; int flags; int last_queuefull_same_count; int tag_success_count; } ;
struct ahc_devinfo {int dummy; } ;
struct TYPE_2__ {scalar_t__ channel; int id; } ;


 int AHC_DEV_Q_BASIC ;
 int AHC_LOCK_TAGS_COUNT ;
 int AHC_QUEUE_BASIC ;
 int AHC_QUEUE_TAGGED ;
 int AHC_SHOW_SENSE ;
 int CAM_REQUEUE_REQ ;
 int DRIVER_SENSE ;
 int ROLE_INITIATOR ;
 int SCB_SENSE ;
 size_t SCSI_SENSE_BUFFERSIZE ;
 int SCSI_STATUS_BUSY ;


 int SCSI_STATUS_OK ;

 int ahc_compile_devinfo (struct ahc_devinfo*,int ,int ,int ,char,int ) ;
 int ahc_debug ;
 int ahc_get_scsi_status (struct scb*) ;
 int ahc_get_sense_buf (struct ahc_softc*,struct scb*) ;
 int ahc_get_sense_residual (struct scb*) ;
 int ahc_platform_set_tags (struct ahc_softc*,struct scsi_device*,struct ahc_devinfo*,int ) ;
 int ahc_print_path (struct ahc_softc*,struct scb*) ;
 int ahc_set_scsi_status (struct scb*,int ) ;
 int ahc_set_transaction_status (struct scb*,int ) ;
 int memcpy (size_t*,int ,size_t) ;
 int memset (size_t*,int ,size_t) ;
 size_t min (int ,int ) ;
 int printk (char*,...) ;
 struct ahc_linux_device* scsi_transport_device_data (struct scsi_device*) ;

__attribute__((used)) static void
ahc_linux_handle_scsi_status(struct ahc_softc *ahc,
        struct scsi_device *sdev, struct scb *scb)
{
 struct ahc_devinfo devinfo;
 struct ahc_linux_device *dev = scsi_transport_device_data(sdev);

 ahc_compile_devinfo(&devinfo,
       ahc->our_id,
       sdev->sdev_target->id, sdev->lun,
       sdev->sdev_target->channel == 0 ? 'A' : 'B',
       ROLE_INITIATOR);
 switch (ahc_get_scsi_status(scb)) {
 default:
  break;
 case 130:
 case 129:
 {
  struct scsi_cmnd *cmd;





  cmd = scb->io_ctx;
  if (scb->flags & SCB_SENSE) {
   u_int sense_size;

   sense_size = min(sizeof(struct scsi_sense_data)
           - ahc_get_sense_residual(scb),
      (u_long)SCSI_SENSE_BUFFERSIZE);
   memcpy(cmd->sense_buffer,
          ahc_get_sense_buf(ahc, scb), sense_size);
   if (sense_size < SCSI_SENSE_BUFFERSIZE)
    memset(&cmd->sense_buffer[sense_size], 0,
           SCSI_SENSE_BUFFERSIZE - sense_size);
   cmd->result |= (DRIVER_SENSE << 24);
  }
  break;
 }
 case 128:
 {
  dev->tag_success_count = 0;
  if (dev->active != 0) {




   dev->openings = 0;




   if (dev->active == dev->tags_on_last_queuefull) {

    dev->last_queuefull_same_count++;
    if (dev->last_queuefull_same_count
     == AHC_LOCK_TAGS_COUNT) {
     dev->maxtags = dev->active;
     ahc_print_path(ahc, scb);
     printk("Locking max tag count at %d\n",
            dev->active);
    }
   } else {
    dev->tags_on_last_queuefull = dev->active;
    dev->last_queuefull_same_count = 0;
   }
   ahc_set_transaction_status(scb, CAM_REQUEUE_REQ);
   ahc_set_scsi_status(scb, SCSI_STATUS_OK);
   ahc_platform_set_tags(ahc, sdev, &devinfo,
         (dev->flags & AHC_DEV_Q_BASIC)
       ? AHC_QUEUE_BASIC : AHC_QUEUE_TAGGED);
   break;
  }




  dev->openings = 1;
  ahc_set_scsi_status(scb, SCSI_STATUS_BUSY);
  ahc_platform_set_tags(ahc, sdev, &devinfo,
        (dev->flags & AHC_DEV_Q_BASIC)
      ? AHC_QUEUE_BASIC : AHC_QUEUE_TAGGED);
  break;
 }
 }
}
