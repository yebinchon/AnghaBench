
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {unsigned int npwm; int * pwms; } ;
struct kona_pwmc {TYPE_1__ chip; int clk; } ;


 int clk_disable_unprepare (int ) ;
 struct kona_pwmc* platform_get_drvdata (struct platform_device*) ;
 scalar_t__ pwm_is_enabled (int *) ;
 int pwmchip_remove (TYPE_1__*) ;

__attribute__((used)) static int kona_pwmc_remove(struct platform_device *pdev)
{
 struct kona_pwmc *kp = platform_get_drvdata(pdev);
 unsigned int chan;

 for (chan = 0; chan < kp->chip.npwm; chan++)
  if (pwm_is_enabled(&kp->chip.pwms[chan]))
   clk_disable_unprepare(kp->clk);

 return pwmchip_remove(&kp->chip);
}
