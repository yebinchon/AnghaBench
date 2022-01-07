
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ci_hdrc {TYPE_1__* platdata; scalar_t__ vbus_active; scalar_t__ is_otg; } ;
struct TYPE_2__ {scalar_t__ pins_default; int pctl; scalar_t__ pins_device; } ;


 int OTGSC_BSVIE ;
 int OTGSC_BSVIS ;
 int hw_write_otgsc (struct ci_hdrc*,int,int) ;
 int pinctrl_select_state (int ,scalar_t__) ;

__attribute__((used)) static void udc_id_switch_for_host(struct ci_hdrc *ci)
{




 if (ci->is_otg)
  hw_write_otgsc(ci, OTGSC_BSVIE | OTGSC_BSVIS, OTGSC_BSVIS);

 ci->vbus_active = 0;

 if (ci->platdata->pins_device && ci->platdata->pins_default)
  pinctrl_select_state(ci->platdata->pctl,
         ci->platdata->pins_default);
}
