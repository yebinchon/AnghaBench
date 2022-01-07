
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct pinctrl_dev {int dummy; } ;
struct atlas7_pmx_func {int name; struct atlas7_grp_mux* grpmux; } ;
struct atlas7_pmx {int dev; scalar_t__ sys2pci_base; TYPE_1__* pctl_data; } ;
struct atlas7_pin_group {unsigned int* pins; int name; } ;
struct atlas7_pad_mux {int func; int pin; } ;
struct atlas7_grp_mux {int pad_mux_count; struct atlas7_pad_mux* pad_mux_list; } ;
struct TYPE_2__ {struct atlas7_pin_group* grps; struct atlas7_pmx_func* funcs; } ;


 int BUG_ON (int) ;
 scalar_t__ SYS2PCI_SDIO9SEL ;
 int __atlas7_pmx_pin_enable (struct atlas7_pmx*,int ,int ) ;
 int __atlas7_pmx_pin_input_disable_clr (struct atlas7_pmx*,struct atlas7_pad_mux const*) ;
 int __atlas7_pmx_pin_input_disable_set (struct atlas7_pmx*,struct atlas7_pad_mux const*) ;
 int dev_err (int ,char*,int ,int ,int ,int ,int) ;
 struct atlas7_pmx* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int pr_debug (char*,int ,int ) ;
 int sd3_9_pins ;
 int strcmp (int ,char*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int atlas7_pmx_set_mux(struct pinctrl_dev *pctldev,
   u32 func_selector, u32 group_selector)
{
 int idx, ret;
 struct atlas7_pmx *pmx = pinctrl_dev_get_drvdata(pctldev);
 struct atlas7_pmx_func *pmx_func;
 struct atlas7_pin_group *pin_grp;
 const struct atlas7_grp_mux *grp_mux;
 const struct atlas7_pad_mux *mux;

 pmx_func = &pmx->pctl_data->funcs[func_selector];
 pin_grp = &pmx->pctl_data->grps[group_selector];

 pr_debug("PMX DUMP ### Function:[%s] Group:[%s] #### START >>>\n",
   pmx_func->name, pin_grp->name);


 if (pin_grp->pins == (unsigned int *)&sd3_9_pins) {
  if (!strcmp(pmx_func->name, "sd9"))
   writel(1, pmx->sys2pci_base + SYS2PCI_SDIO9SEL);
  else
   writel(0, pmx->sys2pci_base + SYS2PCI_SDIO9SEL);
 }

 grp_mux = pmx_func->grpmux;

 for (idx = 0; idx < grp_mux->pad_mux_count; idx++) {
  mux = &grp_mux->pad_mux_list[idx];
  __atlas7_pmx_pin_input_disable_set(pmx, mux);
  ret = __atlas7_pmx_pin_enable(pmx, mux->pin, mux->func);
  if (ret) {
   dev_err(pmx->dev,
    "FUNC:%s GRP:%s PIN#%d.%d failed, ret=%d\n",
    pmx_func->name, pin_grp->name,
    mux->pin, mux->func, ret);
   BUG_ON(1);
  }
  __atlas7_pmx_pin_input_disable_clr(pmx, mux);
 }
 pr_debug("PMX DUMP ### Function:[%s] Group:[%s] #### END <<<\n",
   pmx_func->name, pin_grp->name);

 return 0;
}
