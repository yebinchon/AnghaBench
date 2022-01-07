
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct atmel_pwm_chip {int updated_pwms; int clk; int isr_lock; } ;


 int HZ ;
 int PWM_DIS ;
 int PWM_ISR ;
 int PWM_SR ;
 int atmel_pwm_readl (struct atmel_pwm_chip*,int ) ;
 int atmel_pwm_writel (struct atmel_pwm_chip*,int ,int) ;
 int clk_disable (int ) ;
 int jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_before (int,unsigned long) ;
 struct atmel_pwm_chip* to_atmel_pwm_chip (struct pwm_chip*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void atmel_pwm_disable(struct pwm_chip *chip, struct pwm_device *pwm,
         bool disable_clk)
{
 struct atmel_pwm_chip *atmel_pwm = to_atmel_pwm_chip(chip);
 unsigned long timeout = jiffies + 2 * HZ;





 mutex_lock(&atmel_pwm->isr_lock);
 atmel_pwm->updated_pwms |= atmel_pwm_readl(atmel_pwm, PWM_ISR);

 while (!(atmel_pwm->updated_pwms & (1 << pwm->hwpwm)) &&
        time_before(jiffies, timeout)) {
  usleep_range(10, 100);
  atmel_pwm->updated_pwms |= atmel_pwm_readl(atmel_pwm, PWM_ISR);
 }

 mutex_unlock(&atmel_pwm->isr_lock);
 atmel_pwm_writel(atmel_pwm, PWM_DIS, 1 << pwm->hwpwm);





 timeout = jiffies + 2 * HZ;

 while ((atmel_pwm_readl(atmel_pwm, PWM_SR) & (1 << pwm->hwpwm)) &&
        time_before(jiffies, timeout))
  usleep_range(10, 100);

 if (disable_clk)
  clk_disable(atmel_pwm->clk);
}
