
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {int dev; } ;
struct us_data {TYPE_1__* pusb_intf; struct usb_device* pusb_dev; } ;
struct swoc_info {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 int SWIMS_SET_MODE_Modem ;
 scalar_t__ TRU_FORCE_MODEM ;
 scalar_t__ TRU_FORCE_MS ;
 int containsFullLinuxPackage (struct swoc_info*) ;
 int debug_swoc (int *,struct swoc_info*) ;
 int dev_attr_truinst ;
 int device_create_file (int *,int *) ;
 int kfree (struct swoc_info*) ;
 struct swoc_info* kmalloc (int,int ) ;
 int schedule_timeout_uninterruptible (int) ;
 int scsi_get_host_dev (struct Scsi_Host*) ;
 int sierra_get_swoc_info (struct usb_device*,struct swoc_info*) ;
 int sierra_set_ms_mode (struct usb_device*,int ) ;
 scalar_t__ swi_tru_install ;
 struct Scsi_Host* us_to_host (struct us_data*) ;
 int usb_stor_dbg (struct us_data*,char*) ;

int sierra_ms_init(struct us_data *us)
{
 int result, retries;
 struct swoc_info *swocInfo;
 struct usb_device *udev;
 struct Scsi_Host *sh;

 retries = 3;
 result = 0;
 udev = us->pusb_dev;

 sh = us_to_host(us);
 scsi_get_host_dev(sh);


 if (swi_tru_install == TRU_FORCE_MODEM) {
  usb_stor_dbg(us, "SWIMS: Forcing Modem Mode\n");
  result = sierra_set_ms_mode(udev, SWIMS_SET_MODE_Modem);
  if (result < 0)
   usb_stor_dbg(us, "SWIMS: Failed to switch to modem mode\n");
  return -EIO;
 }

 else if (swi_tru_install == TRU_FORCE_MS) {
  usb_stor_dbg(us, "SWIMS: Forcing Mass Storage Mode\n");
  goto complete;
 }

 else {
  usb_stor_dbg(us, "SWIMS: Normal SWoC Logic\n");

  swocInfo = kmalloc(sizeof(struct swoc_info),
    GFP_KERNEL);
  if (!swocInfo)
   return -ENOMEM;

  retries = 3;
  do {
   retries--;
   result = sierra_get_swoc_info(udev, swocInfo);
   if (result < 0) {
    usb_stor_dbg(us, "SWIMS: Failed SWoC query\n");
    schedule_timeout_uninterruptible(2*HZ);
   }
  } while (retries && result < 0);

  if (result < 0) {
   usb_stor_dbg(us, "SWIMS: Completely failed SWoC query\n");
   kfree(swocInfo);
   return -EIO;
  }

  debug_swoc(&us->pusb_dev->dev, swocInfo);





  if (!containsFullLinuxPackage(swocInfo)) {
   usb_stor_dbg(us, "SWIMS: Switching to Modem Mode\n");
   result = sierra_set_ms_mode(udev,
    SWIMS_SET_MODE_Modem);
   if (result < 0)
    usb_stor_dbg(us, "SWIMS: Failed to switch modem\n");
   kfree(swocInfo);
   return -EIO;
  }
  kfree(swocInfo);
 }
complete:
 return device_create_file(&us->pusb_intf->dev, &dev_attr_truinst);
}
