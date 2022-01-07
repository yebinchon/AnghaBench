
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int * DeviceRemovable; } ;
struct TYPE_4__ {TYPE_1__ hs; } ;
struct usb_hub_descriptor {int bPwrOn2PwrGood; int bNbrPorts; int bDescLength; int wHubCharacteristics; TYPE_2__ u; scalar_t__ bHubContrCurrent; int bDescriptorType; } ;
struct fotg210_hcd {int hcs_params; } ;


 int HCS_N_PORTS (int ) ;
 int HUB_CHAR_INDV_PORT_OCPM ;
 int HUB_CHAR_NO_LPSM ;
 int USB_DT_HUB ;
 int cpu_to_le16 (int) ;
 int memset (int *,int,int) ;

__attribute__((used)) static void fotg210_hub_descriptor(struct fotg210_hcd *fotg210,
  struct usb_hub_descriptor *desc)
{
 int ports = HCS_N_PORTS(fotg210->hcs_params);
 u16 temp;

 desc->bDescriptorType = USB_DT_HUB;
 desc->bPwrOn2PwrGood = 10;
 desc->bHubContrCurrent = 0;

 desc->bNbrPorts = ports;
 temp = 1 + (ports / 8);
 desc->bDescLength = 7 + 2 * temp;


 memset(&desc->u.hs.DeviceRemovable[0], 0, temp);
 memset(&desc->u.hs.DeviceRemovable[temp], 0xff, temp);

 temp = HUB_CHAR_INDV_PORT_OCPM;
 temp |= HUB_CHAR_NO_LPSM;
 desc->wHubCharacteristics = cpu_to_le16(temp);
}
