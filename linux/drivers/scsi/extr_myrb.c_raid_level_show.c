
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {scalar_t__ channel; struct myrb_ldev_info* hostdata; int host; } ;
struct myrb_ldev_info {int state; int raid_level; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENXIO ;
 scalar_t__ myrb_logical_channel (int ) ;
 char* myrb_raidlevel_name (int ) ;
 int snprintf (char*,int,char*,...) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t raid_level_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct scsi_device *sdev = to_scsi_device(dev);

 if (sdev->channel == myrb_logical_channel(sdev->host)) {
  struct myrb_ldev_info *ldev_info = sdev->hostdata;
  const char *name;

  if (!ldev_info)
   return -ENXIO;

  name = myrb_raidlevel_name(ldev_info->raid_level);
  if (!name)
   return snprintf(buf, 32, "Invalid (%02X)\n",
     ldev_info->state);
  return snprintf(buf, 32, "%s\n", name);
 }
 return snprintf(buf, 32, "Physical Drive\n");
}
