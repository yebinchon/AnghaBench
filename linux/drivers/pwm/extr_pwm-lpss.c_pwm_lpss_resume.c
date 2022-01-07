
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pwm_lpss_chip {scalar_t__ regs; int * saved_ctrl; TYPE_1__* info; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int npwm; } ;


 scalar_t__ PWM ;
 int PWM_SIZE ;
 struct pwm_lpss_chip* dev_get_drvdata (struct device*) ;
 int writel (int ,scalar_t__) ;

int pwm_lpss_resume(struct device *dev)
{
 struct pwm_lpss_chip *lpwm = dev_get_drvdata(dev);
 int i;

 for (i = 0; i < lpwm->info->npwm; i++)
  writel(lpwm->saved_ctrl[i], lpwm->regs + i * PWM_SIZE + PWM);

 return 0;
}
