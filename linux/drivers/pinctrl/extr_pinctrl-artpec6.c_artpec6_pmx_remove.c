
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct artpec6_pmx {int pctl; } ;


 int pinctrl_unregister (int ) ;
 struct artpec6_pmx* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int artpec6_pmx_remove(struct platform_device *pdev)
{
 struct artpec6_pmx *pmx = platform_get_drvdata(pdev);

 pinctrl_unregister(pmx->pctl);

 return 0;
}
