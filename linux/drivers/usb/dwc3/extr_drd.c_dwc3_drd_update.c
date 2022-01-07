
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3 {scalar_t__ edev; } ;


 int DWC3_GCTL_PRTCAP_DEVICE ;
 int DWC3_GCTL_PRTCAP_HOST ;
 int EXTCON_USB_HOST ;
 int dwc3_set_mode (struct dwc3*,int ) ;
 int extcon_get_state (scalar_t__,int ) ;

__attribute__((used)) static void dwc3_drd_update(struct dwc3 *dwc)
{
 int id;

 if (dwc->edev) {
  id = extcon_get_state(dwc->edev, EXTCON_USB_HOST);
  if (id < 0)
   id = 0;
  dwc3_set_mode(dwc, id ?
         DWC3_GCTL_PRTCAP_HOST :
         DWC3_GCTL_PRTCAP_DEVICE);
 }
}
