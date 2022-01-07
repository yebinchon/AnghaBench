
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* hw_block_size; scalar_t__ hw_queue_depth; void* hw_max_sectors; } ;
struct se_device {TYPE_2__ dev_attrib; int t10_wwn; } ;
struct scsi_device {scalar_t__ type; void* sector_size; scalar_t__ queue_depth; TYPE_1__* host; int lun; int id; int channel; struct request_queue* request_queue; } ;
struct request_queue {int dummy; } ;
struct pscsi_dev_virt {struct scsi_device* pdv_sd; } ;
struct TYPE_3__ {int max_sectors; } ;


 scalar_t__ PSCSI_DEFAULT_QUEUEDEPTH ;
 struct pscsi_dev_virt* PSCSI_DEV (struct se_device*) ;
 scalar_t__ TYPE_TAPE ;
 void* min_not_zero (int,int) ;
 int pr_err (char*,int ,int ,int ,scalar_t__) ;
 int pscsi_get_inquiry_vpd_device_ident (struct scsi_device*,int *) ;
 int pscsi_get_inquiry_vpd_serial (struct scsi_device*,int *) ;
 int pscsi_set_inquiry_info (struct scsi_device*,int *) ;
 int pscsi_tape_read_blocksize (struct se_device*,struct scsi_device*) ;
 int queue_max_hw_sectors (struct request_queue*) ;

__attribute__((used)) static int pscsi_add_device_to_list(struct se_device *dev,
  struct scsi_device *sd)
{
 struct pscsi_dev_virt *pdv = PSCSI_DEV(dev);
 struct request_queue *q = sd->request_queue;

 pdv->pdv_sd = sd;

 if (!sd->queue_depth) {
  sd->queue_depth = PSCSI_DEFAULT_QUEUEDEPTH;

  pr_err("Set broken SCSI Device %d:%d:%llu"
   " queue_depth to %d\n", sd->channel, sd->id,
    sd->lun, sd->queue_depth);
 }

 dev->dev_attrib.hw_block_size =
  min_not_zero((int)sd->sector_size, 512);
 dev->dev_attrib.hw_max_sectors =
  min_not_zero(sd->host->max_sectors, queue_max_hw_sectors(q));
 dev->dev_attrib.hw_queue_depth = sd->queue_depth;




 pscsi_set_inquiry_info(sd, &dev->t10_wwn);





 if (!pscsi_get_inquiry_vpd_serial(sd, &dev->t10_wwn)) {




  pscsi_get_inquiry_vpd_device_ident(sd, &dev->t10_wwn);
 }




 if (sd->type == TYPE_TAPE) {
  pscsi_tape_read_blocksize(dev, sd);
  dev->dev_attrib.hw_block_size = sd->sector_size;
 }
 return 0;
}
