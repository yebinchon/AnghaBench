
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spear_pmx {int dev; TYPE_1__* machdata; } ;
struct spear_pingroup {int nmodemuxs; int name; struct spear_modemux* modemuxs; } ;
struct spear_modemux {int modes; int nmuxregs; int muxregs; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {int mode; scalar_t__ modes_supported; struct spear_pingroup** groups; } ;


 int ENODEV ;
 int dev_err (int ,char*,int ) ;
 int muxregs_endisable (struct spear_pmx*,int ,int ,int) ;
 struct spear_pmx* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int spear_pinctrl_endisable(struct pinctrl_dev *pctldev,
  unsigned function, unsigned group, bool enable)
{
 struct spear_pmx *pmx = pinctrl_dev_get_drvdata(pctldev);
 const struct spear_pingroup *pgroup;
 const struct spear_modemux *modemux;
 int i;
 bool found = 0;

 pgroup = pmx->machdata->groups[group];

 for (i = 0; i < pgroup->nmodemuxs; i++) {
  modemux = &pgroup->modemuxs[i];


  if (pmx->machdata->modes_supported) {
   if (!(pmx->machdata->mode & modemux->modes))
    continue;
  }

  found = 1;
  muxregs_endisable(pmx, modemux->muxregs, modemux->nmuxregs,
    enable);
 }

 if (!found) {
  dev_err(pmx->dev, "pinmux group: %s not supported\n",
    pgroup->name);
  return -ENODEV;
 }

 return 0;
}
