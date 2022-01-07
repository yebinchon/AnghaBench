
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_mediatek_chip {int chip; } ;
struct platform_device {int dummy; } ;


 struct pwm_mediatek_chip* platform_get_drvdata (struct platform_device*) ;
 int pwmchip_remove (int *) ;

__attribute__((used)) static int pwm_mediatek_remove(struct platform_device *pdev)
{
 struct pwm_mediatek_chip *pc = platform_get_drvdata(pdev);

 return pwmchip_remove(&pc->chip);
}
