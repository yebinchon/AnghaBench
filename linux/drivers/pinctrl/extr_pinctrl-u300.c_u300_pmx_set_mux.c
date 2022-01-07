
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct u300_pmx {int dummy; } ;
struct pinctrl_dev {int dummy; } ;


 struct u300_pmx* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int u300_pmx_endisable (struct u300_pmx*,unsigned int,int) ;

__attribute__((used)) static int u300_pmx_set_mux(struct pinctrl_dev *pctldev, unsigned selector,
       unsigned group)
{
 struct u300_pmx *upmx;


 if (selector == 0)
  return 0;

 upmx = pinctrl_dev_get_drvdata(pctldev);
 u300_pmx_endisable(upmx, selector, 1);

 return 0;
}
