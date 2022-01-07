
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef unsigned int u32 ;
struct pwm_device {unsigned int hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct brcmstb_pwm {int lock; int clk; } ;


 unsigned long CONST_VAR_F_MAX ;
 unsigned long CONST_VAR_F_MIN ;
 unsigned int CTRL2_OUT_SELECT ;
 unsigned int CTRL_CHAN_OFFS ;
 int CWORD_BIT_SIZE ;
 int EINVAL ;
 int NSEC_PER_SEC ;
 int PWM_CTRL2 ;
 int PWM_CWORD_LSB (unsigned int) ;
 int PWM_CWORD_MSB (unsigned int) ;
 int PWM_ON (unsigned int) ;
 unsigned long PWM_ON_MIN ;
 int PWM_ON_PERIOD_MAX ;
 int PWM_PERIOD (unsigned int) ;
 unsigned long PWM_PERIOD_MIN ;
 unsigned int brcmstb_pwm_readl (struct brcmstb_pwm*,int ) ;
 int brcmstb_pwm_writel (struct brcmstb_pwm*,unsigned long,int ) ;
 scalar_t__ clk_get_rate (int ) ;
 int do_div (int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct brcmstb_pwm* to_brcmstb_pwm (struct pwm_chip*) ;

__attribute__((used)) static int brcmstb_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
         int duty_ns, int period_ns)
{
 struct brcmstb_pwm *p = to_brcmstb_pwm(chip);
 unsigned long pc, dc, cword = CONST_VAR_F_MAX;
 unsigned int channel = pwm->hwpwm;
 u32 value;






 if (duty_ns == period_ns) {
  dc = PWM_ON_PERIOD_MAX;
  pc = PWM_ON_PERIOD_MAX - 1;
  goto done;
 }

 while (1) {
  u64 rate, tmp;





  rate = (u64)clk_get_rate(p->clk) * (u64)cword;
  do_div(rate, 1 << CWORD_BIT_SIZE);

  tmp = period_ns * rate;
  do_div(tmp, NSEC_PER_SEC);
  pc = tmp;

  tmp = (duty_ns + 1) * rate;
  do_div(tmp, NSEC_PER_SEC);
  dc = tmp;





  if (pc == PWM_PERIOD_MIN || (dc < PWM_ON_MIN && duty_ns))
   return -EINVAL;


  if (pc <= PWM_ON_PERIOD_MAX && dc <= PWM_ON_PERIOD_MAX)
   break;







  cword >>= 1;





  if (cword < CONST_VAR_F_MIN)
   return -EINVAL;
 }

done:





 spin_lock(&p->lock);
 brcmstb_pwm_writel(p, cword >> 8, PWM_CWORD_MSB(channel));
 brcmstb_pwm_writel(p, cword & 0xff, PWM_CWORD_LSB(channel));


 value = brcmstb_pwm_readl(p, PWM_CTRL2);
 value |= CTRL2_OUT_SELECT << (channel * CTRL_CHAN_OFFS);
 brcmstb_pwm_writel(p, value, PWM_CTRL2);


 brcmstb_pwm_writel(p, pc, PWM_PERIOD(channel));
 brcmstb_pwm_writel(p, dc, PWM_ON(channel));
 spin_unlock(&p->lock);

 return 0;
}
