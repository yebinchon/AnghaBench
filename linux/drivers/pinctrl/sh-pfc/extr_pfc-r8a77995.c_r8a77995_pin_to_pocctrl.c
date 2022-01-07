
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_pfc {int dummy; } ;


 int EINVAL ;
 unsigned int RCAR_GP_PIN (int,int) ;

__attribute__((used)) static int r8a77995_pin_to_pocctrl(struct sh_pfc *pfc, unsigned int pin, u32 *pocctrl)
{
 int bit = -EINVAL;

 *pocctrl = 0xe6060380;

 if (pin >= RCAR_GP_PIN(3, 0) && pin <= RCAR_GP_PIN(3, 9))
  bit = 29 - (pin - RCAR_GP_PIN(3, 0));

 return bit;
}
