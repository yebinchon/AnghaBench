
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct pwm_omap_dmtimer_chip {int mutex; int dm_timer; TYPE_2__* pdata; TYPE_1__* dm_timer_pdev; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dev; } ;
struct clk {int dummy; } ;
struct TYPE_4__ {int (* set_pwm ) (int ,int,int,int ) ;int (* set_match ) (int ,int,int) ;int (* set_load ) (int ,int,int) ;int (* stop ) (int ) ;struct clk* (* get_fclk ) (int ) ;} ;
struct TYPE_3__ {int dev; } ;


 int DIV_ROUND_CLOSEST_ULL (int,unsigned long) ;
 int DM_TIMER_MAX ;
 int EINVAL ;
 scalar_t__ NSEC_PER_SEC ;
 int PWM_OMAP_DMTIMER_TRIGGER_OVERFLOW_AND_COMPARE ;
 scalar_t__ PWM_POLARITY_INVERSED ;
 unsigned long clk_get_rate (struct clk*) ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,int,unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_active (int *) ;
 int pwm_get_duty_cycle (struct pwm_device*) ;
 int pwm_get_period (struct pwm_device*) ;
 scalar_t__ pwm_get_polarity (struct pwm_device*) ;
 int pwm_omap_dmtimer_get_clock_cycles (unsigned long,int) ;
 int pwm_omap_dmtimer_start (struct pwm_omap_dmtimer_chip*) ;
 struct clk* stub1 (int ) ;
 int stub2 (int ) ;
 int stub3 (int ,int,int) ;
 int stub4 (int ,int,int) ;
 int stub5 (int ,int,int,int ) ;
 struct pwm_omap_dmtimer_chip* to_pwm_omap_dmtimer_chip (struct pwm_chip*) ;

__attribute__((used)) static int pwm_omap_dmtimer_config(struct pwm_chip *chip,
       struct pwm_device *pwm,
       int duty_ns, int period_ns)
{
 struct pwm_omap_dmtimer_chip *omap = to_pwm_omap_dmtimer_chip(chip);
 u32 period_cycles, duty_cycles;
 u32 load_value, match_value;
 struct clk *fclk;
 unsigned long clk_rate;
 bool timer_active;

 dev_dbg(chip->dev, "requested duty cycle: %d ns, period: %d ns\n",
  duty_ns, period_ns);

 mutex_lock(&omap->mutex);
 if (duty_ns == pwm_get_duty_cycle(pwm) &&
     period_ns == pwm_get_period(pwm)) {

  mutex_unlock(&omap->mutex);
  return 0;
 }

 fclk = omap->pdata->get_fclk(omap->dm_timer);
 if (!fclk) {
  dev_err(chip->dev, "invalid pmtimer fclk\n");
  goto err_einval;
 }

 clk_rate = clk_get_rate(fclk);
 if (!clk_rate) {
  dev_err(chip->dev, "invalid pmtimer fclk rate\n");
  goto err_einval;
 }

 dev_dbg(chip->dev, "clk rate: %luHz\n", clk_rate);
 period_cycles = pwm_omap_dmtimer_get_clock_cycles(clk_rate, period_ns);
 duty_cycles = pwm_omap_dmtimer_get_clock_cycles(clk_rate, duty_ns);

 if (period_cycles < 2) {
  dev_info(chip->dev,
    "period %d ns too short for clock rate %lu Hz\n",
    period_ns, clk_rate);
  goto err_einval;
 }

 if (duty_cycles < 1) {
  dev_dbg(chip->dev,
   "duty cycle %d ns is too short for clock rate %lu Hz\n",
   duty_ns, clk_rate);
  dev_dbg(chip->dev, "using minimum of 1 clock cycle\n");
  duty_cycles = 1;
 } else if (duty_cycles >= period_cycles) {
  dev_dbg(chip->dev,
   "duty cycle %d ns is too long for period %d ns at clock rate %lu Hz\n",
   duty_ns, period_ns, clk_rate);
  dev_dbg(chip->dev, "using maximum of 1 clock cycle less than period\n");
  duty_cycles = period_cycles - 1;
 }

 dev_dbg(chip->dev, "effective duty cycle: %lld ns, period: %lld ns\n",
  DIV_ROUND_CLOSEST_ULL((u64)NSEC_PER_SEC * duty_cycles,
          clk_rate),
  DIV_ROUND_CLOSEST_ULL((u64)NSEC_PER_SEC * period_cycles,
          clk_rate));

 load_value = (DM_TIMER_MAX - period_cycles) + 1;
 match_value = load_value + duty_cycles - 1;






 timer_active = pm_runtime_active(&omap->dm_timer_pdev->dev);
 if (timer_active)
  omap->pdata->stop(omap->dm_timer);

 omap->pdata->set_load(omap->dm_timer, 1, load_value);
 omap->pdata->set_match(omap->dm_timer, 1, match_value);

 dev_dbg(chip->dev, "load value: %#08x (%d), match value: %#08x (%d)\n",
  load_value, load_value, match_value, match_value);

 omap->pdata->set_pwm(omap->dm_timer,
         pwm_get_polarity(pwm) == PWM_POLARITY_INVERSED,
         1,
         PWM_OMAP_DMTIMER_TRIGGER_OVERFLOW_AND_COMPARE);


 if (timer_active)
  pwm_omap_dmtimer_start(omap);

 mutex_unlock(&omap->mutex);

 return 0;

err_einval:
 mutex_unlock(&omap->mutex);

 return -EINVAL;
}
