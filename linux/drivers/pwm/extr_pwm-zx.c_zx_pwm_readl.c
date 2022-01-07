
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zx_pwm_chip {scalar_t__ base; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 zx_pwm_readl(struct zx_pwm_chip *zpc, unsigned int hwpwm,
          unsigned int offset)
{
 return readl(zpc->base + (hwpwm + 1) * 0x10 + offset);
}
