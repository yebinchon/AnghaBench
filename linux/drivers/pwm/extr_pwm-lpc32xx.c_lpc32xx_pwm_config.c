
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct lpc32xx_pwm_chip {scalar_t__ base; int clk; } ;


 int ERANGE ;
 scalar_t__ NSEC_PER_SEC ;
 unsigned long long clk_get_rate (int ) ;
 int div64_u64 (unsigned long long,int) ;
 int readl (scalar_t__) ;
 struct lpc32xx_pwm_chip* to_lpc32xx_pwm_chip (struct pwm_chip*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int lpc32xx_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
         int duty_ns, int period_ns)
{
 struct lpc32xx_pwm_chip *lpc32xx = to_lpc32xx_pwm_chip(chip);
 unsigned long long c;
 int period_cycles, duty_cycles;
 u32 val;
 c = clk_get_rate(lpc32xx->clk);


 period_cycles = div64_u64(c * period_ns,
          (unsigned long long)NSEC_PER_SEC * 256);
 if (!period_cycles || period_cycles > 256)
  return -ERANGE;
 if (period_cycles == 256)
  period_cycles = 0;


 duty_cycles = div64_u64((unsigned long long)(period_ns - duty_ns) * 256,
    period_ns);
 if (!duty_cycles)
  duty_cycles = 1;
 if (duty_cycles > 255)
  duty_cycles = 255;

 val = readl(lpc32xx->base + (pwm->hwpwm << 2));
 val &= ~0xFFFF;
 val |= (period_cycles << 8) | duty_cycles;
 writel(val, lpc32xx->base + (pwm->hwpwm << 2));

 return 0;
}
