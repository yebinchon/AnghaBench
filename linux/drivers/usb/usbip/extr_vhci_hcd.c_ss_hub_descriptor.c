
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bHubHdrDecLat; int DeviceRemovable; } ;
struct TYPE_4__ {TYPE_1__ ss; } ;
struct usb_hub_descriptor {int bDescLength; TYPE_2__ u; int bNbrPorts; int wHubCharacteristics; int bDescriptorType; } ;


 int HUB_CHAR_COMMON_OCPM ;
 int HUB_CHAR_INDV_PORT_LPSM ;
 int USB_DT_SS_HUB ;
 int VHCI_HC_PORTS ;
 int cpu_to_le16 (int) ;
 int memset (struct usb_hub_descriptor*,int ,int) ;

__attribute__((used)) static inline void
ss_hub_descriptor(struct usb_hub_descriptor *desc)
{
 memset(desc, 0, sizeof *desc);
 desc->bDescriptorType = USB_DT_SS_HUB;
 desc->bDescLength = 12;
 desc->wHubCharacteristics = cpu_to_le16(
  HUB_CHAR_INDV_PORT_LPSM | HUB_CHAR_COMMON_OCPM);
 desc->bNbrPorts = VHCI_HC_PORTS;
 desc->u.ss.bHubHdrDecLat = 0x04;
 desc->u.ss.DeviceRemovable = 0xffff;
}
