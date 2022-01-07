
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_pfc {int dummy; } ;


 int EINVAL ;
 unsigned int RCAR_GP_PIN (int,int) ;

__attribute__((used)) static int r8a7791_pin_to_pocctrl(struct sh_pfc *pfc, unsigned int pin, u32 *pocctrl)
{
 if (pin < RCAR_GP_PIN(6, 0) || pin > RCAR_GP_PIN(6, 23))
  return -EINVAL;

 *pocctrl = 0xe606008c;

 return 31 - (pin & 0x1f);
}
