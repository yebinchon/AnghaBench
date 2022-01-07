
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {scalar_t__ channel; scalar_t__ id; int host; } ;
struct myrb_rbld_progress {scalar_t__ ldev_num; unsigned int ldev_size; unsigned int blocks_left; } ;
struct myrb_hba {int dummy; } ;
struct device {int dummy; } ;


 unsigned short MYRB_STATUS_SUCCESS ;
 unsigned short myrb_get_rbld_progress (struct myrb_hba*,struct myrb_rbld_progress*) ;
 scalar_t__ myrb_logical_channel (int ) ;
 int myrb_raid_template ;
 int raid_set_resync (int ,struct device*,unsigned int) ;
 struct myrb_hba* shost_priv (int ) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static void myrb_get_resync(struct device *dev)
{
 struct scsi_device *sdev = to_scsi_device(dev);
 struct myrb_hba *cb = shost_priv(sdev->host);
 struct myrb_rbld_progress rbld_buf;
 unsigned int percent_complete = 0;
 unsigned short status;
 unsigned int ldev_size = 0, remaining = 0;

 if (sdev->channel < myrb_logical_channel(sdev->host))
  return;
 status = myrb_get_rbld_progress(cb, &rbld_buf);
 if (status == MYRB_STATUS_SUCCESS) {
  if (rbld_buf.ldev_num == sdev->id) {
   ldev_size = rbld_buf.ldev_size;
   remaining = rbld_buf.blocks_left;
  }
 }
 if (remaining && ldev_size)
  percent_complete = (ldev_size - remaining) * 100 / ldev_size;
 raid_set_resync(myrb_raid_template, dev, percent_complete);
}
