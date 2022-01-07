
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int mt2712_pinctrl_data ;
 int mtk_pctrl_init (struct platform_device*,int *,int *) ;

__attribute__((used)) static int mt2712_pinctrl_probe(struct platform_device *pdev)
{
 return mtk_pctrl_init(pdev, &mt2712_pinctrl_data, ((void*)0));
}
