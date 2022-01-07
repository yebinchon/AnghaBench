
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct usb_dcd_config_params {int besl_baseline; scalar_t__ bU2DevExitLat; scalar_t__ bU1devExitLat; void* besl_deep; } ;
struct dwc3 {scalar_t__ dis_u2_entry_quirk; scalar_t__ dis_u1_entry_quirk; int hird_threshold; scalar_t__ is_utmi_l1_suspend; int dis_enblslpm_quirk; } ;


 scalar_t__ DWC3_DEFAULT_U1_DEV_EXIT_LAT ;
 int DWC3_DEFAULT_U2_DEV_EXIT_LAT ;
 void* USB_DEFAULT_BESL_UNSPECIFIED ;
 void* clamp_t (int ,int ,int,int) ;
 scalar_t__ cpu_to_le16 (int ) ;
 struct dwc3* gadget_to_dwc (struct usb_gadget*) ;
 int u8 ;

__attribute__((used)) static void dwc3_gadget_config_params(struct usb_gadget *g,
          struct usb_dcd_config_params *params)
{
 struct dwc3 *dwc = gadget_to_dwc(g);

 params->besl_baseline = USB_DEFAULT_BESL_UNSPECIFIED;
 params->besl_deep = USB_DEFAULT_BESL_UNSPECIFIED;


 if (!dwc->dis_enblslpm_quirk) {
  params->besl_baseline = 1;
  if (dwc->is_utmi_l1_suspend)
   params->besl_deep =
    clamp_t(u8, dwc->hird_threshold, 2, 15);
 }


 if (dwc->dis_u1_entry_quirk)
  params->bU1devExitLat = 0;
 else
  params->bU1devExitLat = DWC3_DEFAULT_U1_DEV_EXIT_LAT;


 if (dwc->dis_u2_entry_quirk)
  params->bU2DevExitLat = 0;
 else
  params->bU2DevExitLat =
    cpu_to_le16(DWC3_DEFAULT_U2_DEV_EXIT_LAT);
}
