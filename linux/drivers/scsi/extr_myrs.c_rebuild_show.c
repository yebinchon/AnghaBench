
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {scalar_t__ channel; struct myrs_ldev_info* hostdata; int host; } ;
struct myrs_ldev_info {unsigned short ldev_num; scalar_t__ cfg_devsize; scalar_t__ rbld_lba; scalar_t__ rbld_active; } ;
struct myrs_hba {TYPE_1__* ctlr_info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ physchan_present; } ;


 int EIO ;
 int KERN_INFO ;
 unsigned char MYRS_STATUS_SUCCESS ;
 unsigned char myrs_get_ldev_info (struct myrs_hba*,unsigned short,struct myrs_ldev_info*) ;
 int sdev_printk (int ,struct scsi_device*,char*,unsigned char) ;
 struct myrs_hba* shost_priv (int ) ;
 int snprintf (char*,int,char*,...) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t rebuild_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct scsi_device *sdev = to_scsi_device(dev);
 struct myrs_hba *cs = shost_priv(sdev->host);
 struct myrs_ldev_info *ldev_info;
 unsigned short ldev_num;
 unsigned char status;

 if (sdev->channel < cs->ctlr_info->physchan_present)
  return snprintf(buf, 32, "physical device - not rebuilding\n");

 ldev_info = sdev->hostdata;
 ldev_num = ldev_info->ldev_num;
 status = myrs_get_ldev_info(cs, ldev_num, ldev_info);
 if (status != MYRS_STATUS_SUCCESS) {
  sdev_printk(KERN_INFO, sdev,
       "Failed to get device information, status 0x%02x\n",
       status);
  return -EIO;
 }
 if (ldev_info->rbld_active) {
  return snprintf(buf, 32, "rebuilding block %zu of %zu\n",
    (size_t)ldev_info->rbld_lba,
    (size_t)ldev_info->cfg_devsize);
 } else
  return snprintf(buf, 32, "not rebuilding\n");
}
