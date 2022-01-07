
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tegra_pmx {int dev; TYPE_1__* soc; } ;
struct tegra_pingroup {scalar_t__ pupd_bank; scalar_t__ pupd_reg; scalar_t__ pupd_bit; scalar_t__ tri_bank; scalar_t__ tri_reg; scalar_t__ tri_bit; scalar_t__ mux_bank; scalar_t__ mux_reg; scalar_t__ einput_bit; scalar_t__ odrain_bit; scalar_t__ lock_bit; scalar_t__ ioreset_bit; scalar_t__ rcv_sel_bit; scalar_t__ drv_bank; scalar_t__ drv_reg; scalar_t__ hsm_bit; scalar_t__ schmitt_bit; scalar_t__ lpmd_bit; scalar_t__ drvdn_bit; scalar_t__ drvdn_width; scalar_t__ drvup_bit; scalar_t__ drvup_width; scalar_t__ slwf_bit; scalar_t__ slwf_width; scalar_t__ slwr_bit; scalar_t__ slwr_width; scalar_t__ drvtype_bit; int name; } ;
typedef scalar_t__ s8 ;
typedef scalar_t__ s32 ;
typedef enum tegra_pinconf_param { ____Placeholder_tegra_pinconf_param } tegra_pinconf_param ;
struct TYPE_5__ {int param; char* property; } ;
struct TYPE_4__ {int drvtype_in_mux; int schmitt_in_mux; int hsm_in_mux; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int ENOTSUPP ;
 TYPE_2__* cfg_params ;
 int dev_err (int ,char*,int,...) ;

__attribute__((used)) static int tegra_pinconf_reg(struct tegra_pmx *pmx,
        const struct tegra_pingroup *g,
        enum tegra_pinconf_param param,
        bool report_err,
        s8 *bank, s32 *reg, s8 *bit, s8 *width)
{
 switch (param) {
 case 133:
  *bank = g->pupd_bank;
  *reg = g->pupd_reg;
  *bit = g->pupd_bit;
  *width = 2;
  break;
 case 128:
  *bank = g->tri_bank;
  *reg = g->tri_reg;
  *bit = g->tri_bit;
  *width = 1;
  break;
 case 139:
  *bank = g->mux_bank;
  *reg = g->mux_reg;
  *bit = g->einput_bit;
  *width = 1;
  break;
 case 134:
  *bank = g->mux_bank;
  *reg = g->mux_reg;
  *bit = g->odrain_bit;
  *width = 1;
  break;
 case 136:
  *bank = g->mux_bank;
  *reg = g->mux_reg;
  *bit = g->lock_bit;
  *width = 1;
  break;
 case 137:
  *bank = g->mux_bank;
  *reg = g->mux_reg;
  *bit = g->ioreset_bit;
  *width = 1;
  break;
 case 132:
  *bank = g->mux_bank;
  *reg = g->mux_reg;
  *bit = g->rcv_sel_bit;
  *width = 1;
  break;
 case 138:
  if (pmx->soc->hsm_in_mux) {
   *bank = g->mux_bank;
   *reg = g->mux_reg;
  } else {
   *bank = g->drv_bank;
   *reg = g->drv_reg;
  }
  *bit = g->hsm_bit;
  *width = 1;
  break;
 case 131:
  if (pmx->soc->schmitt_in_mux) {
   *bank = g->mux_bank;
   *reg = g->mux_reg;
  } else {
   *bank = g->drv_bank;
   *reg = g->drv_reg;
  }
  *bit = g->schmitt_bit;
  *width = 1;
  break;
 case 135:
  *bank = g->drv_bank;
  *reg = g->drv_reg;
  *bit = g->lpmd_bit;
  *width = 2;
  break;
 case 142:
  *bank = g->drv_bank;
  *reg = g->drv_reg;
  *bit = g->drvdn_bit;
  *width = g->drvdn_width;
  break;
 case 140:
  *bank = g->drv_bank;
  *reg = g->drv_reg;
  *bit = g->drvup_bit;
  *width = g->drvup_width;
  break;
 case 130:
  *bank = g->drv_bank;
  *reg = g->drv_reg;
  *bit = g->slwf_bit;
  *width = g->slwf_width;
  break;
 case 129:
  *bank = g->drv_bank;
  *reg = g->drv_reg;
  *bit = g->slwr_bit;
  *width = g->slwr_width;
  break;
 case 141:
  if (pmx->soc->drvtype_in_mux) {
   *bank = g->mux_bank;
   *reg = g->mux_reg;
  } else {
   *bank = g->drv_bank;
   *reg = g->drv_reg;
  }
  *bit = g->drvtype_bit;
  *width = 2;
  break;
 default:
  dev_err(pmx->dev, "Invalid config param %04x\n", param);
  return -ENOTSUPP;
 }

 if (*reg < 0 || *bit < 0) {
  if (report_err) {
   const char *prop = "unknown";
   int i;

   for (i = 0; i < ARRAY_SIZE(cfg_params); i++) {
    if (cfg_params[i].param == param) {
     prop = cfg_params[i].property;
     break;
    }
   }

   dev_err(pmx->dev,
    "Config param %04x (%s) not supported on group %s\n",
    param, prop, g->name);
  }
  return -ENOTSUPP;
 }

 return 0;
}
