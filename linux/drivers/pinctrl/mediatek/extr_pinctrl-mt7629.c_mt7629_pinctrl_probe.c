
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int mt7629_data ;
 int mtk_moore_pinctrl_probe (struct platform_device*,int *) ;

__attribute__((used)) static int mt7629_pinctrl_probe(struct platform_device *pdev)
{
 return mtk_moore_pinctrl_probe(pdev, &mt7629_data);
}
