
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct clps711x_chip {int chip; } ;


 struct clps711x_chip* platform_get_drvdata (struct platform_device*) ;
 int pwmchip_remove (int *) ;

__attribute__((used)) static int clps711x_pwm_remove(struct platform_device *pdev)
{
 struct clps711x_chip *priv = platform_get_drvdata(pdev);

 return pwmchip_remove(&priv->chip);
}
