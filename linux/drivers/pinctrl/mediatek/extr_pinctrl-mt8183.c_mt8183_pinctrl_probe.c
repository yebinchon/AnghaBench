
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int mt8183_data ;
 int mtk_paris_pinctrl_probe (struct platform_device*,int *) ;

__attribute__((used)) static int mt8183_pinctrl_probe(struct platform_device *pdev)
{
 return mtk_paris_pinctrl_probe(pdev, &mt8183_data);
}
