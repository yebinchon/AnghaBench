
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbb_charger {scalar_t__ addr; int regmap; } ;
struct platform_device {int dummy; } ;


 int CTRL_EN ;
 scalar_t__ SMBB_CHG_CTRL ;
 struct smbb_charger* platform_get_drvdata (struct platform_device*) ;
 int regmap_update_bits (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static int smbb_charger_remove(struct platform_device *pdev)
{
 struct smbb_charger *chg;

 chg = platform_get_drvdata(pdev);

 regmap_update_bits(chg->regmap, chg->addr + SMBB_CHG_CTRL, CTRL_EN, 0);

 return 0;
}
