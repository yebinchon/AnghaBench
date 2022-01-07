
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wusbhc {int ports_max; } ;
struct TYPE_3__ {int * DeviceRemovable; } ;
struct TYPE_4__ {TYPE_1__ hs; } ;
struct usb_hub_descriptor {int bDescLength; int bNbrPorts; TYPE_2__ u; scalar_t__ bHubContrCurrent; scalar_t__ bPwrOn2PwrGood; int wHubCharacteristics; int bDescriptorType; } ;


 int ENOSPC ;
 int HUB_CHAR_COMMON_LPSM ;
 int HUB_CHAR_NO_OCPM ;
 int USB_DT_HUB ;
 int cpu_to_le16 (int) ;
 int memset (int *,int,int) ;

__attribute__((used)) static int wusbhc_rh_get_hub_descr(struct wusbhc *wusbhc, u16 wValue,
       u16 wIndex,
       struct usb_hub_descriptor *descr,
       u16 wLength)
{
 u16 temp = 1 + (wusbhc->ports_max / 8);
 u8 length = 7 + 2 * temp;

 if (wLength < length)
  return -ENOSPC;
 descr->bDescLength = 7 + 2 * temp;
 descr->bDescriptorType = USB_DT_HUB;
 descr->bNbrPorts = wusbhc->ports_max;
 descr->wHubCharacteristics = cpu_to_le16(
  HUB_CHAR_COMMON_LPSM
  | 0x00
  | HUB_CHAR_NO_OCPM
  | 0x00
  | 0x00);
 descr->bPwrOn2PwrGood = 0;
 descr->bHubContrCurrent = 0;

 memset(&descr->u.hs.DeviceRemovable[0], 0, temp);
 memset(&descr->u.hs.DeviceRemovable[temp], 0xff, temp);
 return 0;
}
