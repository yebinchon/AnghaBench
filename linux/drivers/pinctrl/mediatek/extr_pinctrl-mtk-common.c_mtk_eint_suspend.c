
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_pinctrl {int eint; } ;
struct device {int dummy; } ;


 struct mtk_pinctrl* dev_get_drvdata (struct device*) ;
 int mtk_eint_do_suspend (int ) ;

__attribute__((used)) static int mtk_eint_suspend(struct device *device)
{
 struct mtk_pinctrl *pctl = dev_get_drvdata(device);

 return mtk_eint_do_suspend(pctl->eint);
}
