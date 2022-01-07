
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct rtsx_dev {int control_exit; int dev_mutex; int notify; TYPE_2__* pci; int cmnd_ready; struct rtsx_chip* chip; } ;
struct rtsx_chip {scalar_t__ max_lun; TYPE_3__* srb; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_7__ {int result; scalar_t__ sc_data_direction; int (* scsi_done ) (TYPE_3__*) ;TYPE_1__* device; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {scalar_t__ lun; scalar_t__ id; } ;


 int DID_ABORT ;
 int DID_BAD_TARGET ;
 int DID_ERROR ;
 scalar_t__ DMA_BIDIRECTIONAL ;
 int RTSX_STAT_ABORT ;
 int RTSX_STAT_DISCONNECT ;
 int RTSX_STAT_IDLE ;
 int complete (int *) ;
 int complete_and_exit (int *,int ) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ rtsx_chk_stat (struct rtsx_chip*,int ) ;
 int rtsx_invoke_transport (TYPE_3__*,struct rtsx_chip*) ;
 int rtsx_set_stat (struct rtsx_chip*,int ) ;
 struct Scsi_Host* rtsx_to_host (struct rtsx_dev*) ;
 int scsi_lock (struct Scsi_Host*) ;
 int scsi_show_command (struct rtsx_chip*) ;
 int scsi_unlock (struct Scsi_Host*) ;
 int stub1 (TYPE_3__*) ;
 scalar_t__ wait_for_completion_interruptible (int *) ;

__attribute__((used)) static int rtsx_control_thread(void *__dev)
{
 struct rtsx_dev *dev = __dev;
 struct rtsx_chip *chip = dev->chip;
 struct Scsi_Host *host = rtsx_to_host(dev);

 for (;;) {
  if (wait_for_completion_interruptible(&dev->cmnd_ready))
   break;


  mutex_lock(&dev->dev_mutex);


  if (rtsx_chk_stat(chip, RTSX_STAT_DISCONNECT)) {
   dev_info(&dev->pci->dev, "-- rtsx-control exiting\n");
   mutex_unlock(&dev->dev_mutex);
   break;
  }


  scsi_lock(host);


  if (rtsx_chk_stat(chip, RTSX_STAT_ABORT)) {
   chip->srb->result = DID_ABORT << 16;
   goto skip_for_abort;
  }

  scsi_unlock(host);




  if (chip->srb->sc_data_direction == DMA_BIDIRECTIONAL) {
   dev_err(&dev->pci->dev, "UNKNOWN data direction\n");
   chip->srb->result = DID_ERROR << 16;
  }




  else if (chip->srb->device->id) {
   dev_err(&dev->pci->dev, "Bad target number (%d:%d)\n",
    chip->srb->device->id,
    (u8)chip->srb->device->lun);
   chip->srb->result = DID_BAD_TARGET << 16;
  }

  else if (chip->srb->device->lun > chip->max_lun) {
   dev_err(&dev->pci->dev, "Bad LUN (%d:%d)\n",
    chip->srb->device->id,
    (u8)chip->srb->device->lun);
   chip->srb->result = DID_BAD_TARGET << 16;
  }


  else {
   scsi_show_command(chip);
   rtsx_invoke_transport(chip->srb, chip);
  }


  scsi_lock(host);


  if (!chip->srb)
   ;


  else if (chip->srb->result != DID_ABORT << 16) {
   chip->srb->scsi_done(chip->srb);
  } else {
skip_for_abort:
   dev_err(&dev->pci->dev, "scsi command aborted\n");
  }

  if (rtsx_chk_stat(chip, RTSX_STAT_ABORT)) {
   complete(&dev->notify);

   rtsx_set_stat(chip, RTSX_STAT_IDLE);
  }


  chip->srb = ((void*)0);
  scsi_unlock(host);


  mutex_unlock(&dev->dev_mutex);
 }
 complete_and_exit(&dev->control_exit, 0);
}
