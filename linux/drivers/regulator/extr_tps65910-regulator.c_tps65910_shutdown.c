
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65910_reg {int num_regulators; int * rdev; } ;
struct platform_device {int dev; } ;


 int dev_err (int *,char*) ;
 struct tps65910_reg* platform_get_drvdata (struct platform_device*) ;
 int tps65910_set_ext_sleep_config (struct tps65910_reg*,int,int ) ;

__attribute__((used)) static void tps65910_shutdown(struct platform_device *pdev)
{
 struct tps65910_reg *pmic = platform_get_drvdata(pdev);
 int i;
 for (i = 0; i < pmic->num_regulators; i++) {
  int err;
  if (!pmic->rdev[i])
   continue;

  err = tps65910_set_ext_sleep_config(pmic, i, 0);
  if (err < 0)
   dev_err(&pdev->dev,
    "Error in clearing external control\n");
 }
}
