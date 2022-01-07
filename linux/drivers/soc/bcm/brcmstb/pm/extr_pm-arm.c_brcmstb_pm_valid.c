
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int suspend_state_t ;
struct TYPE_2__ {int support_warm_boot; } ;




 TYPE_1__ ctrl ;

__attribute__((used)) static int brcmstb_pm_valid(suspend_state_t state)
{
 switch (state) {
 case 128:
  return 1;
 case 129:
  return ctrl.support_warm_boot;
 default:
  return 0;
 }
}
