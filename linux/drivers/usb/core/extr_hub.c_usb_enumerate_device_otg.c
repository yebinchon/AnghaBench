
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_otg_descriptor {int bmAttributes; int bLength; } ;
struct usb_device {scalar_t__ parent; unsigned int portnum; int dev; TYPE_2__* config; int * rawdescriptors; struct usb_bus* bus; } ;
struct usb_bus {scalar_t__ root_hub; unsigned int otg_port; int b_hnp_enable; int is_b_host; } ;
struct TYPE_3__ {int wTotalLength; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;


 int USB_CTRL_SET_TIMEOUT ;
 int USB_DEVICE_A_ALT_HNP_SUPPORT ;
 int USB_DEVICE_B_HNP_ENABLE ;
 int USB_DT_OTG ;
 int USB_OTG_HNP ;
 int USB_REQ_SET_FEATURE ;
 int __usb_get_extra_descriptor (int ,int ,int ,void**,int) ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,char*) ;
 int le16_to_cpu (int ) ;
 int usb_control_msg (struct usb_device*,int ,int ,int ,int ,int ,int *,int ,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int usb_enumerate_device_otg(struct usb_device *udev)
{
 int err = 0;
 return err;
}
