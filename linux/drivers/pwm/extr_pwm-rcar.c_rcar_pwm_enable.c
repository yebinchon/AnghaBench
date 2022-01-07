
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcar_pwm_chip {int dummy; } ;


 int EINVAL ;
 int RCAR_PWMCNT ;
 int RCAR_PWMCNT_CYC0_MASK ;
 int RCAR_PWMCNT_PH0_MASK ;
 int RCAR_PWMCR ;
 int RCAR_PWMCR_EN0 ;
 int rcar_pwm_read (struct rcar_pwm_chip*,int ) ;
 int rcar_pwm_update (struct rcar_pwm_chip*,int ,int ,int ) ;

__attribute__((used)) static int rcar_pwm_enable(struct rcar_pwm_chip *rp)
{
 u32 value;


 value = rcar_pwm_read(rp, RCAR_PWMCNT);
 if ((value & RCAR_PWMCNT_CYC0_MASK) == 0 ||
     (value & RCAR_PWMCNT_PH0_MASK) == 0)
  return -EINVAL;

 rcar_pwm_update(rp, RCAR_PWMCR_EN0, RCAR_PWMCR_EN0, RCAR_PWMCR);

 return 0;
}
