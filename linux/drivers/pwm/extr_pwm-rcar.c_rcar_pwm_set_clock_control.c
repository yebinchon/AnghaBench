
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct rcar_pwm_chip {int dummy; } ;


 int RCAR_PWMCR ;
 unsigned int RCAR_PWMCR_CC0_MASK ;
 unsigned int RCAR_PWMCR_CC0_SHIFT ;
 unsigned int RCAR_PWMCR_CCMD ;
 unsigned int rcar_pwm_read (struct rcar_pwm_chip*,int ) ;
 int rcar_pwm_write (struct rcar_pwm_chip*,unsigned int,int ) ;

__attribute__((used)) static void rcar_pwm_set_clock_control(struct rcar_pwm_chip *rp,
           unsigned int div)
{
 u32 value;

 value = rcar_pwm_read(rp, RCAR_PWMCR);
 value &= ~(RCAR_PWMCR_CCMD | RCAR_PWMCR_CC0_MASK);

 if (div & 1)
  value |= RCAR_PWMCR_CCMD;

 div >>= 1;

 value |= div << RCAR_PWMCR_CC0_SHIFT;
 rcar_pwm_write(rp, value, RCAR_PWMCR);
}
