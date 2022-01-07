
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct tegra_pmx {TYPE_1__* soc; } ;
struct tegra_pingroup {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
typedef int s8 ;
typedef int s32 ;
typedef enum tegra_pinconf_param { ____Placeholder_tegra_pinconf_param } tegra_pinconf_param ;
struct TYPE_2__ {struct tegra_pingroup* groups; } ;


 unsigned long TEGRA_PINCONF_PACK (int,int) ;
 int TEGRA_PINCONF_UNPACK_PARAM (unsigned long) ;
 struct tegra_pmx* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int pmx_readl (struct tegra_pmx*,int,int ) ;
 int tegra_pinconf_reg (struct tegra_pmx*,struct tegra_pingroup const*,int,int,int*,int *,int*,int*) ;

__attribute__((used)) static int tegra_pinconf_group_get(struct pinctrl_dev *pctldev,
       unsigned group, unsigned long *config)
{
 struct tegra_pmx *pmx = pinctrl_dev_get_drvdata(pctldev);
 enum tegra_pinconf_param param = TEGRA_PINCONF_UNPACK_PARAM(*config);
 u16 arg;
 const struct tegra_pingroup *g;
 int ret;
 s8 bank, bit, width;
 s32 reg;
 u32 val, mask;

 g = &pmx->soc->groups[group];

 ret = tegra_pinconf_reg(pmx, g, param, 1, &bank, &reg, &bit,
    &width);
 if (ret < 0)
  return ret;

 val = pmx_readl(pmx, bank, reg);
 mask = (1 << width) - 1;
 arg = (val >> bit) & mask;

 *config = TEGRA_PINCONF_PACK(param, arg);

 return 0;
}
