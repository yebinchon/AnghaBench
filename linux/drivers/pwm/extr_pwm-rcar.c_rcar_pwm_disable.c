
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_pwm_chip {int dummy; } ;


 int RCAR_PWMCR ;
 int RCAR_PWMCR_EN0 ;
 int rcar_pwm_update (struct rcar_pwm_chip*,int ,int ,int ) ;

__attribute__((used)) static void rcar_pwm_disable(struct rcar_pwm_chip *rp)
{
 rcar_pwm_update(rp, RCAR_PWMCR_EN0, 0, RCAR_PWMCR);
}
