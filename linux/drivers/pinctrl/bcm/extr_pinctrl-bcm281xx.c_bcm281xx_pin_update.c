
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline void bcm281xx_pin_update(u32 *reg_val, u32 *reg_mask,
           u32 param_val, u32 param_shift,
           u32 param_mask)
{
 *reg_val &= ~param_mask;
 *reg_val |= (param_val << param_shift) & param_mask;
 *reg_mask |= param_mask;
}
