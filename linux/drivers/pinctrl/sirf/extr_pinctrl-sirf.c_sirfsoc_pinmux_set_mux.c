
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirfsoc_pmx {int dummy; } ;
struct pinctrl_dev {int dummy; } ;


 struct sirfsoc_pmx* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int sirfsoc_pinmux_endisable (struct sirfsoc_pmx*,unsigned int,int) ;

__attribute__((used)) static int sirfsoc_pinmux_set_mux(struct pinctrl_dev *pmxdev,
    unsigned selector,
    unsigned group)
{
 struct sirfsoc_pmx *spmx;

 spmx = pinctrl_dev_get_drvdata(pmxdev);
 sirfsoc_pinmux_endisable(spmx, selector, 1);

 return 0;
}
