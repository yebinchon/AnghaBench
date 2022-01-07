
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suspend_state_t ;


 int EINVAL ;


 int brcmstb_pm_standby (int) ;

__attribute__((used)) static int brcmstb_pm_enter(suspend_state_t state)
{
 int ret = -EINVAL;

 switch (state) {
 case 128:
  ret = brcmstb_pm_standby(0);
  break;
 case 129:
  ret = brcmstb_pm_standby(1);
  break;
 }

 return ret;
}
