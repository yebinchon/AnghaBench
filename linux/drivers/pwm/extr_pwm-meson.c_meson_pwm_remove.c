
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct meson_pwm {int chip; } ;


 struct meson_pwm* platform_get_drvdata (struct platform_device*) ;
 int pwmchip_remove (int *) ;

__attribute__((used)) static int meson_pwm_remove(struct platform_device *pdev)
{
 struct meson_pwm *meson = platform_get_drvdata(pdev);

 return pwmchip_remove(&meson->chip);
}
