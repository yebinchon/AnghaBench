
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct arizona_ldo1 {scalar_t__ ena_gpiod; } ;


 int gpiod_put (scalar_t__) ;
 struct arizona_ldo1* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int arizona_ldo1_remove(struct platform_device *pdev)
{
 struct arizona_ldo1 *ldo1 = platform_get_drvdata(pdev);

 if (ldo1->ena_gpiod)
  gpiod_put(ldo1->ena_gpiod);

 return 0;
}
