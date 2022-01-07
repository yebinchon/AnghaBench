
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct ecap_pwm_chip {unsigned long long clk_rate; TYPE_1__ chip; scalar_t__ mmio_base; } ;


 scalar_t__ CAP1 ;
 scalar_t__ CAP2 ;
 scalar_t__ CAP3 ;
 scalar_t__ CAP4 ;
 scalar_t__ ECCTL2 ;
 int ECCTL2_APWM_MODE ;
 int ECCTL2_SYNC_SEL_DISA ;
 int ERANGE ;
 int NSEC_PER_SEC ;
 int do_div (unsigned long long,int) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int pwm_is_enabled (struct pwm_device*) ;
 int readw (scalar_t__) ;
 struct ecap_pwm_chip* to_ecap_pwm_chip (struct pwm_chip*) ;
 int writel (int,scalar_t__) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int ecap_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
  int duty_ns, int period_ns)
{
 struct ecap_pwm_chip *pc = to_ecap_pwm_chip(chip);
 u32 period_cycles, duty_cycles;
 unsigned long long c;
 u16 value;

 if (period_ns > NSEC_PER_SEC)
  return -ERANGE;

 c = pc->clk_rate;
 c = c * period_ns;
 do_div(c, NSEC_PER_SEC);
 period_cycles = (u32)c;

 if (period_cycles < 1) {
  period_cycles = 1;
  duty_cycles = 1;
 } else {
  c = pc->clk_rate;
  c = c * duty_ns;
  do_div(c, NSEC_PER_SEC);
  duty_cycles = (u32)c;
 }

 pm_runtime_get_sync(pc->chip.dev);

 value = readw(pc->mmio_base + ECCTL2);


 value |= ECCTL2_APWM_MODE | ECCTL2_SYNC_SEL_DISA;

 writew(value, pc->mmio_base + ECCTL2);

 if (!pwm_is_enabled(pwm)) {

  writel(duty_cycles, pc->mmio_base + CAP2);
  writel(period_cycles, pc->mmio_base + CAP1);
 } else {





  writel(duty_cycles, pc->mmio_base + CAP4);
  writel(period_cycles, pc->mmio_base + CAP3);
 }

 if (!pwm_is_enabled(pwm)) {
  value = readw(pc->mmio_base + ECCTL2);

  value &= ~ECCTL2_APWM_MODE;
  writew(value, pc->mmio_base + ECCTL2);
 }

 pm_runtime_put_sync(pc->chip.dev);

 return 0;
}
