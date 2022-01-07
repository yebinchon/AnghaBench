
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sh_pfc {int dummy; } ;
struct TYPE_2__ {int reg; } ;


 int EINVAL ;
 size_t POCCTRL0 ;
 size_t POCCTRL1 ;
 size_t POCCTRL2 ;
 unsigned int RCAR_GP_PIN (int,int) ;
 TYPE_1__* pinmux_ioctrl_regs ;

__attribute__((used)) static int r8a77980_pin_to_pocctrl(struct sh_pfc *pfc, unsigned int pin,
       u32 *pocctrl)
{
 int bit = pin & 0x1f;

 *pocctrl = pinmux_ioctrl_regs[POCCTRL0].reg;
 if (pin >= RCAR_GP_PIN(0, 0) && pin <= RCAR_GP_PIN(0, 21))
  return bit;
 else if (pin >= RCAR_GP_PIN(2, 0) && pin <= RCAR_GP_PIN(2, 9))
  return bit + 22;

 *pocctrl = pinmux_ioctrl_regs[POCCTRL1].reg;
 if (pin >= RCAR_GP_PIN(2, 10) && pin <= RCAR_GP_PIN(2, 16))
  return bit - 10;
 if ((pin >= RCAR_GP_PIN(2, 17) && pin <= RCAR_GP_PIN(2, 24)) ||
     (pin >= RCAR_GP_PIN(3, 0) && pin <= RCAR_GP_PIN(3, 16)))
  return bit + 7;

 *pocctrl = pinmux_ioctrl_regs[POCCTRL2].reg;
 if (pin >= RCAR_GP_PIN(2, 25) && pin <= RCAR_GP_PIN(2, 29))
  return pin - 25;

 return -EINVAL;
}
