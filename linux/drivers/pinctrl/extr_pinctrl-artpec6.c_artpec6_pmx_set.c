
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct artpec6_pmx {int dev; } ;


 int artpec6_get_group_name (struct pinctrl_dev*,unsigned int) ;
 int artpec6_pmx_get_fname (struct pinctrl_dev*,unsigned int) ;
 int artpec6_pmx_select_func (struct pinctrl_dev*,unsigned int,unsigned int,int) ;
 int dev_dbg (int ,char*,int ,int ) ;
 struct artpec6_pmx* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int artpec6_pmx_set(struct pinctrl_dev *pctldev,
      unsigned int function,
      unsigned int group)
{
 struct artpec6_pmx *pmx = pinctrl_dev_get_drvdata(pctldev);

 dev_dbg(pmx->dev, "enabling %s function for pin group %s\n",
  artpec6_pmx_get_fname(pctldev, function),
  artpec6_get_group_name(pctldev, group));

 artpec6_pmx_select_func(pctldev, function, group, 1);

 return 0;
}
