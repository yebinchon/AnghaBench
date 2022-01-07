
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl_pwmled_chip {int chip; } ;
struct platform_device {int dummy; } ;


 struct twl_pwmled_chip* platform_get_drvdata (struct platform_device*) ;
 int pwmchip_remove (int *) ;

__attribute__((used)) static int twl_pwmled_remove(struct platform_device *pdev)
{
 struct twl_pwmled_chip *twl = platform_get_drvdata(pdev);

 return pwmchip_remove(&twl->chip);
}
