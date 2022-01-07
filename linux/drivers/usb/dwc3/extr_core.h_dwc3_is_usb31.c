
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3 {int revision; } ;


 int DWC3_REVISION_IS_DWC31 ;

__attribute__((used)) static inline bool dwc3_is_usb31(struct dwc3 *dwc)
{
 return !!(dwc->revision & DWC3_REVISION_IS_DWC31);
}
