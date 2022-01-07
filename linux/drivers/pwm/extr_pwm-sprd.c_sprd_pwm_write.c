
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sprd_pwm_chip {int base; } ;


 int SPRD_PWM_REGS_SHIFT ;
 int writel_relaxed (int,int) ;

__attribute__((used)) static void sprd_pwm_write(struct sprd_pwm_chip *spc, u32 hwid,
      u32 reg, u32 val)
{
 u32 offset = reg + (hwid << SPRD_PWM_REGS_SHIFT);

 writel_relaxed(val, spc->base + offset);
}
