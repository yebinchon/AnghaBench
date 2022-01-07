
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int mt7623_bonding_disable (struct platform_device*) ;
 int mt7623_data ;
 int mtk_moore_pinctrl_probe (struct platform_device*,int *) ;

__attribute__((used)) static int mt7623_pinctrl_probe(struct platform_device *pdev)
{
 int err;

 err = mtk_moore_pinctrl_probe(pdev, &mt7623_data);
 if (err)
  return err;

 mt7623_bonding_disable(pdev);

 return 0;
}
