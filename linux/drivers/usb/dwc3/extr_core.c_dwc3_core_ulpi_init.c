
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hwparams3; } ;
struct dwc3 {scalar_t__ hsphy_interface; TYPE_1__ hwparams; } ;


 int DWC3_GHWPARAMS3_HSPHY_IFC (int ) ;
 int DWC3_GHWPARAMS3_HSPHY_IFC_ULPI ;
 int DWC3_GHWPARAMS3_HSPHY_IFC_UTMI_ULPI ;
 int dwc3_ulpi_init (struct dwc3*) ;
 int strncmp (scalar_t__,char*,int) ;

__attribute__((used)) static int dwc3_core_ulpi_init(struct dwc3 *dwc)
{
 int intf;
 int ret = 0;

 intf = DWC3_GHWPARAMS3_HSPHY_IFC(dwc->hwparams.hwparams3);

 if (intf == DWC3_GHWPARAMS3_HSPHY_IFC_ULPI ||
     (intf == DWC3_GHWPARAMS3_HSPHY_IFC_UTMI_ULPI &&
      dwc->hsphy_interface &&
      !strncmp(dwc->hsphy_interface, "ulpi", 4)))
  ret = dwc3_ulpi_init(dwc);

 return ret;
}
