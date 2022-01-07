
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pinctrl {int dummy; } ;


 int PAD_LOCKED ;
 int PAD_UNLOCKED ;
 int intel_pad_locked (struct intel_pinctrl*,unsigned int) ;

__attribute__((used)) static bool intel_pad_is_unlocked(struct intel_pinctrl *pctrl, unsigned int pin)
{
 return (intel_pad_locked(pctrl, pin) & PAD_LOCKED) == PAD_UNLOCKED;
}
