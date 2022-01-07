
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct xhci_hcd {int hcc_params; } ;
struct usb_hub_descriptor {int bPwrOn2PwrGood; int bNbrPorts; int wHubCharacteristics; scalar_t__ bHubContrCurrent; } ;


 scalar_t__ HCC_PPC (int ) ;
 int HUB_CHAR_INDV_PORT_LPSM ;
 int HUB_CHAR_INDV_PORT_OCPM ;
 int HUB_CHAR_NO_LPSM ;
 int cpu_to_le16 (int ) ;

__attribute__((used)) static void xhci_common_hub_descriptor(struct xhci_hcd *xhci,
  struct usb_hub_descriptor *desc, int ports)
{
 u16 temp;

 desc->bPwrOn2PwrGood = 10;
 desc->bHubContrCurrent = 0;

 desc->bNbrPorts = ports;
 temp = 0;

 if (HCC_PPC(xhci->hcc_params))
  temp |= HUB_CHAR_INDV_PORT_LPSM;
 else
  temp |= HUB_CHAR_NO_LPSM;


 temp |= HUB_CHAR_INDV_PORT_OCPM;


 desc->wHubCharacteristics = cpu_to_le16(temp);
}
