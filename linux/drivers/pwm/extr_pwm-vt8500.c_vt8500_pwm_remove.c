
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt8500_chip {int chip; int clk; } ;
struct platform_device {int dummy; } ;


 int ENODEV ;
 int clk_unprepare (int ) ;
 struct vt8500_chip* platform_get_drvdata (struct platform_device*) ;
 int pwmchip_remove (int *) ;

__attribute__((used)) static int vt8500_pwm_remove(struct platform_device *pdev)
{
 struct vt8500_chip *chip;

 chip = platform_get_drvdata(pdev);
 if (chip == ((void*)0))
  return -ENODEV;

 clk_unprepare(chip->clk);

 return pwmchip_remove(&chip->chip);
}
