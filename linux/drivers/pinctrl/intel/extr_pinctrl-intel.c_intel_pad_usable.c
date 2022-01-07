
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pinctrl {int dummy; } ;


 scalar_t__ intel_pad_is_unlocked (struct intel_pinctrl*,unsigned int) ;
 scalar_t__ intel_pad_owned_by_host (struct intel_pinctrl*,unsigned int) ;

__attribute__((used)) static bool intel_pad_usable(struct intel_pinctrl *pctrl, unsigned int pin)
{
 return intel_pad_owned_by_host(pctrl, pin) && intel_pad_is_unlocked(pctrl, pin);
}
