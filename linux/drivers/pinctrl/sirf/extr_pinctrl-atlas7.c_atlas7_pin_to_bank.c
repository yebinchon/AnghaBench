
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ ATLAS7_PINCTRL_BANK_0_PINS ;

__attribute__((used)) static inline u32 atlas7_pin_to_bank(u32 pin)
{
 return (pin >= ATLAS7_PINCTRL_BANK_0_PINS) ? 1 : 0;
}
