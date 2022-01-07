
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dwc2_hsotg {TYPE_1__** eps_out; int ep0_state; } ;
struct TYPE_2__ {int dir_in; } ;


 int DWC2_EP0_STATUS_IN ;
 int DWC2_EP0_STATUS_OUT ;
 int dwc2_hsotg_program_zlp (struct dwc2_hsotg*,TYPE_1__*) ;

__attribute__((used)) static void dwc2_hsotg_ep0_zlp(struct dwc2_hsotg *hsotg, bool dir_in)
{

 hsotg->eps_out[0]->dir_in = dir_in;
 hsotg->ep0_state = dir_in ? DWC2_EP0_STATUS_IN : DWC2_EP0_STATUS_OUT;

 dwc2_hsotg_program_zlp(hsotg, hsotg->eps_out[0]);
}
