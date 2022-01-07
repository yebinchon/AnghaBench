
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bDeviceProtocol; int bcdUSB; } ;
struct usb_device {TYPE_2__* bos; TYPE_1__ descriptor; } ;
struct TYPE_4__ {scalar_t__ ssp_cap; } ;


 scalar_t__ USB_HUB_PR_SS ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static inline int hub_is_superspeedplus(struct usb_device *hdev)
{
 return (hdev->descriptor.bDeviceProtocol == USB_HUB_PR_SS &&
  le16_to_cpu(hdev->descriptor.bcdUSB) >= 0x0310 &&
  hdev->bos->ssp_cap);
}
