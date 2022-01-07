
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dev; } ;
struct swoc_info {void* LinuxVer; void* LinuxSKU; } ;


 int SWIMS_USB_REQUEST_GetSwocInfo ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_TYPE_VENDOR ;
 int dev_dbg (int *,char*) ;
 void* le16_to_cpu (void*) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,void*,int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int sierra_get_swoc_info(struct usb_device *udev,
    struct swoc_info *swocInfo)
{
 int result;

 dev_dbg(&udev->dev, "SWIMS: Attempting to get TRU-Install info\n");

 result = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0),
   SWIMS_USB_REQUEST_GetSwocInfo,
   USB_TYPE_VENDOR | USB_DIR_IN,
   0,
   0,
   (void *) swocInfo,
   sizeof(struct swoc_info),
   USB_CTRL_SET_TIMEOUT);

 swocInfo->LinuxSKU = le16_to_cpu(swocInfo->LinuxSKU);
 swocInfo->LinuxVer = le16_to_cpu(swocInfo->LinuxVer);
 return result;
}
