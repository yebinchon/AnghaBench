
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct myrs_hba {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef size_t ssize_t ;


 size_t EIO ;
 int KERN_INFO ;
 int MYRS_IOCTL_FLUSH_DEVICE_DATA ;
 int MYRS_RAID_CONTROLLER ;
 unsigned char MYRS_STATUS_SUCCESS ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 unsigned char myrs_dev_op (struct myrs_hba*,int ,int ) ;
 int shost_printk (int ,struct Scsi_Host*,char*,...) ;
 struct myrs_hba* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static ssize_t flush_cache_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct myrs_hba *cs = shost_priv(shost);
 unsigned char status;

 status = myrs_dev_op(cs, MYRS_IOCTL_FLUSH_DEVICE_DATA,
        MYRS_RAID_CONTROLLER);
 if (status == MYRS_STATUS_SUCCESS) {
  shost_printk(KERN_INFO, shost, "Cache Flush Completed\n");
  return count;
 }
 shost_printk(KERN_INFO, shost,
       "Cache Flush failed, status 0x%02x\n", status);
 return -EIO;
}
