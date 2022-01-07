
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct act8945a_pmic {int regmap; } ;


 int ACT8945A_SYS_CTRL ;
 struct act8945a_pmic* platform_get_drvdata (struct platform_device*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void act8945a_pmic_shutdown(struct platform_device *pdev)
{
 struct act8945a_pmic *act8945a = platform_get_drvdata(pdev);




 regmap_write(act8945a->regmap, ACT8945A_SYS_CTRL, 0x0);
}
