
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hwparams0; } ;
struct dwc3 {scalar_t__ dr_mode; int revision; TYPE_1__ hwparams; struct device* dev; } ;
struct device {int dummy; } ;
typedef enum usb_dr_mode { ____Placeholder_usb_dr_mode } usb_dr_mode ;


 int CONFIG_USB_DWC3_GADGET ;
 int CONFIG_USB_DWC3_HOST ;
 unsigned int DWC3_GHWPARAMS0_MODE (int ) ;


 int DWC3_REVISION_330A ;
 int EINVAL ;
 int IS_ENABLED (int ) ;
 int USB_DR_MODE_HOST ;
 int USB_DR_MODE_OTG ;
 int USB_DR_MODE_PERIPHERAL ;
 scalar_t__ USB_DR_MODE_UNKNOWN ;
 int dev_err (struct device*,char*) ;
 int dev_warn (struct device*,char*,char*) ;

__attribute__((used)) static int dwc3_get_dr_mode(struct dwc3 *dwc)
{
 enum usb_dr_mode mode;
 struct device *dev = dwc->dev;
 unsigned int hw_mode;

 if (dwc->dr_mode == USB_DR_MODE_UNKNOWN)
  dwc->dr_mode = USB_DR_MODE_OTG;

 mode = dwc->dr_mode;
 hw_mode = DWC3_GHWPARAMS0_MODE(dwc->hwparams.hwparams0);

 switch (hw_mode) {
 case 129:
  if (IS_ENABLED(CONFIG_USB_DWC3_HOST)) {
   dev_err(dev,
    "Controller does not support host mode.\n");
   return -EINVAL;
  }
  mode = USB_DR_MODE_PERIPHERAL;
  break;
 case 128:
  if (IS_ENABLED(CONFIG_USB_DWC3_GADGET)) {
   dev_err(dev,
    "Controller does not support device mode.\n");
   return -EINVAL;
  }
  mode = USB_DR_MODE_HOST;
  break;
 default:
  if (IS_ENABLED(CONFIG_USB_DWC3_HOST))
   mode = USB_DR_MODE_HOST;
  else if (IS_ENABLED(CONFIG_USB_DWC3_GADGET))
   mode = USB_DR_MODE_PERIPHERAL;






  if (mode == USB_DR_MODE_OTG &&
      dwc->revision >= DWC3_REVISION_330A)
   mode = USB_DR_MODE_PERIPHERAL;
 }

 if (mode != dwc->dr_mode) {
  dev_warn(dev,
    "Configuration mismatch. dr_mode forced to %s\n",
    mode == USB_DR_MODE_HOST ? "host" : "gadget");

  dwc->dr_mode = mode;
 }

 return 0;
}
