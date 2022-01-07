
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ci_hdrc {scalar_t__ is_otg; TYPE_1__* platdata; } ;
struct TYPE_2__ {scalar_t__ pins_device; int pctl; } ;


 int OTGSC_BSVIE ;
 int OTGSC_BSVIS ;
 int hw_write_otgsc (struct ci_hdrc*,int,int) ;
 int pinctrl_select_state (int ,scalar_t__) ;

__attribute__((used)) static int udc_id_switch_for_device(struct ci_hdrc *ci)
{
 if (ci->platdata->pins_device)
  pinctrl_select_state(ci->platdata->pctl,
         ci->platdata->pins_device);

 if (ci->is_otg)

  hw_write_otgsc(ci, OTGSC_BSVIS | OTGSC_BSVIE,
     OTGSC_BSVIS | OTGSC_BSVIE);

 return 0;
}
