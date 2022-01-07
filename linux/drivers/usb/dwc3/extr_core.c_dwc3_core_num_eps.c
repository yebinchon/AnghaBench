
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_hwparams {int dummy; } ;
struct dwc3 {int num_eps; struct dwc3_hwparams hwparams; } ;


 int DWC3_NUM_EPS (struct dwc3_hwparams*) ;

__attribute__((used)) static void dwc3_core_num_eps(struct dwc3 *dwc)
{
 struct dwc3_hwparams *parms = &dwc->hwparams;

 dwc->num_eps = DWC3_NUM_EPS(parms);
}
