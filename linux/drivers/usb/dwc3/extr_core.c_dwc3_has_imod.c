
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3 {scalar_t__ revision; } ;


 scalar_t__ DWC3_REVISION_300A ;
 scalar_t__ DWC3_USB31_REVISION_120A ;
 scalar_t__ dwc3_is_usb3 (struct dwc3*) ;
 scalar_t__ dwc3_is_usb31 (struct dwc3*) ;

bool dwc3_has_imod(struct dwc3 *dwc)
{
 return ((dwc3_is_usb3(dwc) &&
   dwc->revision >= DWC3_REVISION_300A) ||
  (dwc3_is_usb31(dwc) &&
   dwc->revision >= DWC3_USB31_REVISION_120A));
}
