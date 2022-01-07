
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hwparams3; } ;
struct dwc3 {int imod_interval; scalar_t__ revision; int maximum_speed; TYPE_1__ hwparams; struct device* dev; } ;
struct device {int dummy; } ;


 int DWC3_GHWPARAMS3_SSPHY_IFC (int ) ;
 int DWC3_GHWPARAMS3_SSPHY_IFC_GEN2 ;
 scalar_t__ DWC3_REVISION_300A ;






 int dev_err (struct device*,char*,int) ;
 int dev_warn (struct device*,char*) ;
 int dwc3_has_imod (struct dwc3*) ;
 int dwc3_is_usb31 (struct dwc3*) ;

__attribute__((used)) static void dwc3_check_params(struct dwc3 *dwc)
{
 struct device *dev = dwc->dev;


 if (dwc->imod_interval && !dwc3_has_imod(dwc)) {
  dev_warn(dwc->dev, "Interrupt moderation not supported\n");
  dwc->imod_interval = 0;
 }
 if (!dwc->imod_interval &&
     (dwc->revision == DWC3_REVISION_300A))
  dwc->imod_interval = 1;


 switch (dwc->maximum_speed) {
 case 131:
 case 133:
 case 132:
 case 130:
 case 129:
  break;
 default:
  dev_err(dev, "invalid maximum_speed parameter %d\n",
   dwc->maximum_speed);

 case 128:

  dwc->maximum_speed = 130;




  if (dwc3_is_usb31(dwc) &&
      (DWC3_GHWPARAMS3_SSPHY_IFC(dwc->hwparams.hwparams3) ==
       DWC3_GHWPARAMS3_SSPHY_IFC_GEN2))
   dwc->maximum_speed = 129;

  break;
 }
}
