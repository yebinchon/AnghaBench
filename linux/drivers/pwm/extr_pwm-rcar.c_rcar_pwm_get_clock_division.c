
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct rcar_pwm_chip {int clk; } ;


 int EINVAL ;
 int ERANGE ;
 scalar_t__ NSEC_PER_SEC ;
 unsigned long RCAR_PWM_MAX_CYCLE ;
 unsigned long RCAR_PWM_MAX_DIVISION ;
 unsigned long clk_get_rate (int ) ;
 unsigned long div64_u64 (unsigned long,unsigned long) ;
 int ilog2 (unsigned long) ;

__attribute__((used)) static int rcar_pwm_get_clock_division(struct rcar_pwm_chip *rp, int period_ns)
{
 unsigned long clk_rate = clk_get_rate(rp->clk);
 u64 div, tmp;

 if (clk_rate == 0)
  return -EINVAL;

 div = (u64)NSEC_PER_SEC * RCAR_PWM_MAX_CYCLE;
 tmp = (u64)period_ns * clk_rate + div - 1;
 tmp = div64_u64(tmp, div);
 div = ilog2(tmp - 1) + 1;

 return (div <= RCAR_PWM_MAX_DIVISION) ? div : -ERANGE;
}
