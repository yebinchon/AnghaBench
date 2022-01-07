
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct usb_hub_descriptor {int dummy; } ;
struct TYPE_4__ {int b_hnp_enable; int otg_port; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct ohci_hcd {int num_ports; TYPE_3__* regs; int (* start_hnp ) (struct ohci_hcd*) ;} ;
struct TYPE_5__ {int * portstatus; int status; } ;
struct TYPE_6__ {TYPE_2__ roothub; } ;






 int EPIPE ;
 int ESHUTDOWN ;



 int HCD_HW_ACCESSIBLE (struct usb_hcd*) ;
 int RH_HS_CRWE ;
 int RH_HS_DRWE ;
 int RH_HS_OCIC ;
 int RH_PS_CCS ;
 int RH_PS_CSC ;
 int RH_PS_LSDA ;
 int RH_PS_OCIC ;
 int RH_PS_PESC ;
 int RH_PS_POCI ;
 int RH_PS_PPS ;
 int RH_PS_PRSC ;
 int RH_PS_PSS ;
 int RH_PS_PSSC ;
 int dbg_port (struct ohci_hcd*,char*,int,int) ;
 struct ohci_hcd* hcd_to_ohci (struct usb_hcd*) ;
 int ohci_hub_descriptor (struct ohci_hcd*,struct usb_hub_descriptor*) ;
 int ohci_writel (struct ohci_hcd*,int,int *) ;
 int put_unaligned_le32 (int,char*) ;
 int root_port_reset (struct ohci_hcd*,int) ;
 int roothub_portstatus (struct ohci_hcd*,int) ;
 int roothub_status (struct ohci_hcd*) ;
 int stub1 (struct ohci_hcd*) ;
 scalar_t__ unlikely (int) ;

int ohci_hub_control(
 struct usb_hcd *hcd,
 u16 typeReq,
 u16 wValue,
 u16 wIndex,
 char *buf,
 u16 wLength
) {
 struct ohci_hcd *ohci = hcd_to_ohci (hcd);
 int ports = ohci->num_ports;
 u32 temp;
 int retval = 0;

 if (unlikely(!HCD_HW_ACCESSIBLE(hcd)))
  return -ESHUTDOWN;

 switch (typeReq) {
 case 143:
  switch (wValue) {
  case 144:
   ohci_writel (ohci, RH_HS_OCIC,
     &ohci->regs->roothub.status);
  case 145:
   break;
  default:
   goto error;
  }
  break;
 case 142:
  if (!wIndex || wIndex > ports)
   goto error;
  wIndex--;

  switch (wValue) {
  case 131:
   temp = RH_PS_CCS;
   break;
  case 135:
   temp = RH_PS_PESC;
   break;
  case 128:
   temp = RH_PS_POCI;
   break;
  case 132:
   temp = RH_PS_PSSC;
   break;
  case 130:
   temp = RH_PS_LSDA;
   break;
  case 136:
   temp = RH_PS_CSC;
   break;
  case 134:
   temp = RH_PS_OCIC;
   break;
  case 133:
   temp = RH_PS_PRSC;
   break;
  default:
   goto error;
  }
  ohci_writel (ohci, temp,
    &ohci->regs->roothub.portstatus [wIndex]);

  break;
 case 141:
  ohci_hub_descriptor (ohci, (struct usb_hub_descriptor *) buf);
  break;
 case 140:
  temp = roothub_status (ohci) & ~(RH_HS_CRWE | RH_HS_DRWE);
  put_unaligned_le32(temp, buf);
  break;
 case 139:
  if (!wIndex || wIndex > ports)
   goto error;
  wIndex--;
  temp = roothub_portstatus (ohci, wIndex);
  put_unaligned_le32(temp, buf);

  if (*(u16*)(buf+2))
   dbg_port(ohci, "GetStatus", wIndex, temp);
  break;
 case 138:
  switch (wValue) {
  case 144:

  case 145:
   break;
  default:
   goto error;
  }
  break;
 case 137:
  if (!wIndex || wIndex > ports)
   goto error;
  wIndex--;
  switch (wValue) {
  case 128:






   ohci_writel (ohci, RH_PS_PSS,
    &ohci->regs->roothub.portstatus [wIndex]);
   break;
  case 130:
   ohci_writel (ohci, RH_PS_PPS,
    &ohci->regs->roothub.portstatus [wIndex]);
   break;
  case 129:
   retval = root_port_reset (ohci, wIndex);
   break;
  default:
   goto error;
  }
  break;

 default:
error:

  retval = -EPIPE;
 }
 return retval;
}
