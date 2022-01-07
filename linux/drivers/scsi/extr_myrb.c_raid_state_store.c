
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct myrb_pdev_state* hostdata; int host; } ;
struct myrb_pdev_state {int state; int present; } ;
struct myrb_hba {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
typedef enum myrb_devstate { ____Placeholder_myrb_devstate } myrb_devstate ;


 size_t EAGAIN ;
 size_t EBUSY ;
 size_t EINVAL ;
 size_t EIO ;
 size_t ENODEV ;
 size_t ENXIO ;
 int KERN_INFO ;
 int MYRB_DEVICE_DEAD ;
 int MYRB_DEVICE_ONLINE ;
 int MYRB_DEVICE_STANDBY ;





 unsigned short myrb_set_pdev_state (struct myrb_hba*,struct scsi_device*,int) ;
 int sdev_printk (int ,struct scsi_device*,char*,...) ;
 struct myrb_hba* shost_priv (int ) ;
 int strncmp (char const*,char*,int) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t raid_state_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct scsi_device *sdev = to_scsi_device(dev);
 struct myrb_hba *cb = shost_priv(sdev->host);
 struct myrb_pdev_state *pdev_info;
 enum myrb_devstate new_state;
 unsigned short status;

 if (!strncmp(buf, "kill", 4) ||
     !strncmp(buf, "offline", 7))
  new_state = MYRB_DEVICE_DEAD;
 else if (!strncmp(buf, "online", 6))
  new_state = MYRB_DEVICE_ONLINE;
 else if (!strncmp(buf, "standby", 7))
  new_state = MYRB_DEVICE_STANDBY;
 else
  return -EINVAL;

 pdev_info = sdev->hostdata;
 if (!pdev_info) {
  sdev_printk(KERN_INFO, sdev,
       "Failed - no physical device information\n");
  return -ENXIO;
 }
 if (!pdev_info->present) {
  sdev_printk(KERN_INFO, sdev,
       "Failed - device not present\n");
  return -ENXIO;
 }

 if (pdev_info->state == new_state)
  return count;

 status = myrb_set_pdev_state(cb, sdev, new_state);
 switch (status) {
 case 128:
  break;
 case 129:
  sdev_printk(KERN_INFO, sdev,
        "Failed - Unable to Start Device\n");
  count = -EAGAIN;
  break;
 case 130:
  sdev_printk(KERN_INFO, sdev,
       "Failed - No Device at Address\n");
  count = -ENODEV;
  break;
 case 131:
  sdev_printk(KERN_INFO, sdev,
    "Failed - Invalid Channel or Target or Modifier\n");
  count = -EINVAL;
  break;
 case 132:
  sdev_printk(KERN_INFO, sdev,
    "Failed - Channel Busy\n");
  count = -EBUSY;
  break;
 default:
  sdev_printk(KERN_INFO, sdev,
    "Failed - Unexpected Status %04X\n", status);
  count = -EIO;
  break;
 }
 return count;
}
