
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct max77650_charger_data {int dummy; } ;


 int max77650_charger_disable (struct max77650_charger_data*) ;
 struct max77650_charger_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int max77650_charger_remove(struct platform_device *pdev)
{
 struct max77650_charger_data *chg = platform_get_drvdata(pdev);

 return max77650_charger_disable(chg);
}
