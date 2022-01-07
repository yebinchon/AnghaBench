
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zx_pwm_chip {int dummy; } ;


 int zx_pwm_readl (struct zx_pwm_chip*,unsigned int,unsigned int) ;
 int zx_pwm_writel (struct zx_pwm_chip*,unsigned int,unsigned int,int) ;

__attribute__((used)) static void zx_pwm_set_mask(struct zx_pwm_chip *zpc, unsigned int hwpwm,
       unsigned int offset, u32 mask, u32 value)
{
 u32 data;

 data = zx_pwm_readl(zpc, hwpwm, offset);
 data &= ~mask;
 data |= value & mask;
 zx_pwm_writel(zpc, hwpwm, offset, data);
}
