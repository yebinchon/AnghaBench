
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mt6397_chip {int regmap; } ;


 struct mt6397_chip* dev_get_drvdata (int ) ;
 int mt6397_pinctrl_data ;
 int mtk_pctrl_init (struct platform_device*,int *,int ) ;

__attribute__((used)) static int mt6397_pinctrl_probe(struct platform_device *pdev)
{
 struct mt6397_chip *mt6397;

 mt6397 = dev_get_drvdata(pdev->dev.parent);
 return mtk_pctrl_init(pdev, &mt6397_pinctrl_data, mt6397->regmap);
}
