
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;
struct pwm_chip {int dev; } ;
struct platform_device {int dummy; } ;


 int ep93xx_pwm_acquire_gpio (struct platform_device*) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static int ep93xx_pwm_request(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct platform_device *pdev = to_platform_device(chip->dev);

 return ep93xx_pwm_acquire_gpio(pdev);
}
