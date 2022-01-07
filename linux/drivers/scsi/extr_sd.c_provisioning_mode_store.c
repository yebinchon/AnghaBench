
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_disk {struct scsi_device* device; } ;
struct scsi_device {scalar_t__ type; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int CAP_SYS_ADMIN ;
 size_t EACCES ;
 size_t EINVAL ;
 int SD_LBP_DISABLE ;
 scalar_t__ TYPE_DISK ;
 int capable (int ) ;
 int lbp_mode ;
 int sd_config_discard (struct scsi_disk*,int) ;
 scalar_t__ sd_is_zoned (struct scsi_disk*) ;
 int sysfs_match_string (int ,char const*) ;
 struct scsi_disk* to_scsi_disk (struct device*) ;

__attribute__((used)) static ssize_t
provisioning_mode_store(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t count)
{
 struct scsi_disk *sdkp = to_scsi_disk(dev);
 struct scsi_device *sdp = sdkp->device;
 int mode;

 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;

 if (sd_is_zoned(sdkp)) {
  sd_config_discard(sdkp, SD_LBP_DISABLE);
  return count;
 }

 if (sdp->type != TYPE_DISK)
  return -EINVAL;

 mode = sysfs_match_string(lbp_mode, buf);
 if (mode < 0)
  return -EINVAL;

 sd_config_discard(sdkp, mode);

 return count;
}
