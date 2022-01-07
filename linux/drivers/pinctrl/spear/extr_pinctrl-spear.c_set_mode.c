
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spear_pmx_mode {int mode; char* name; int reg; int val; int mask; } ;
struct spear_pmx {int dev; TYPE_1__* machdata; } ;
struct TYPE_2__ {int npmx_modes; int mode; struct spear_pmx_mode** pmx_modes; } ;


 int EINVAL ;
 int dev_info (int ,char*,char*,int ) ;
 int pmx_readl (struct spear_pmx*,int ) ;
 int pmx_writel (struct spear_pmx*,int ,int ) ;

__attribute__((used)) static int set_mode(struct spear_pmx *pmx, int mode)
{
 struct spear_pmx_mode *pmx_mode = ((void*)0);
 int i;
 u32 val;

 if (!pmx->machdata->pmx_modes || !pmx->machdata->npmx_modes)
  return -EINVAL;

 for (i = 0; i < pmx->machdata->npmx_modes; i++) {
  if (pmx->machdata->pmx_modes[i]->mode == (1 << mode)) {
   pmx_mode = pmx->machdata->pmx_modes[i];
   break;
  }
 }

 if (!pmx_mode)
  return -EINVAL;

 val = pmx_readl(pmx, pmx_mode->reg);
 val &= ~pmx_mode->mask;
 val |= pmx_mode->val;
 pmx_writel(pmx, val, pmx_mode->reg);

 pmx->machdata->mode = pmx_mode->mode;
 dev_info(pmx->dev, "Configured Mode: %s with id: %x\n\n",
   pmx_mode->name ? pmx_mode->name : "no_name",
   pmx_mode->reg);

 return 0;
}
