
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {scalar_t__ channel; scalar_t__ id; int host; } ;
struct myrb_rbld_progress {scalar_t__ ldev_num; int ldev_size; int blocks_left; } ;
struct myrb_hba {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 unsigned char MYRB_STATUS_SUCCESS ;
 unsigned char myrb_get_rbld_progress (struct myrb_hba*,struct myrb_rbld_progress*) ;
 scalar_t__ myrb_logical_channel (int ) ;
 struct myrb_hba* shost_priv (int ) ;
 int snprintf (char*,int,char*,...) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t rebuild_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct scsi_device *sdev = to_scsi_device(dev);
 struct myrb_hba *cb = shost_priv(sdev->host);
 struct myrb_rbld_progress rbld_buf;
 unsigned char status;

 if (sdev->channel < myrb_logical_channel(sdev->host))
  return snprintf(buf, 32, "physical device - not rebuilding\n");

 status = myrb_get_rbld_progress(cb, &rbld_buf);

 if (rbld_buf.ldev_num != sdev->id ||
     status != MYRB_STATUS_SUCCESS)
  return snprintf(buf, 32, "not rebuilding\n");

 return snprintf(buf, 32, "rebuilding block %u of %u\n",
   rbld_buf.ldev_size - rbld_buf.blocks_left,
   rbld_buf.ldev_size);
}
