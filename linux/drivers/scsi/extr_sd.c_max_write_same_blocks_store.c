
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_disk {unsigned long max_ws_blocks; struct scsi_device* device; } ;
struct scsi_device {scalar_t__ type; int no_write_same; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int CAP_SYS_ADMIN ;
 int EACCES ;
 int EINVAL ;
 unsigned long SD_MAX_WS16_BLOCKS ;
 scalar_t__ TYPE_DISK ;
 scalar_t__ TYPE_ZBC ;
 int capable (int ) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int sd_config_write_same (struct scsi_disk*) ;
 struct scsi_disk* to_scsi_disk (struct device*) ;

__attribute__((used)) static ssize_t
max_write_same_blocks_store(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct scsi_disk *sdkp = to_scsi_disk(dev);
 struct scsi_device *sdp = sdkp->device;
 unsigned long max;
 int err;

 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;

 if (sdp->type != TYPE_DISK && sdp->type != TYPE_ZBC)
  return -EINVAL;

 err = kstrtoul(buf, 10, &max);

 if (err)
  return err;

 if (max == 0)
  sdp->no_write_same = 1;
 else if (max <= SD_MAX_WS16_BLOCKS) {
  sdp->no_write_same = 0;
  sdkp->max_ws_blocks = max;
 }

 sd_config_write_same(sdkp);

 return count;
}
