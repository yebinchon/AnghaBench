
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct atlas7_pmx {scalar_t__* regs; int dev; TYPE_1__* pctl_data; } ;
struct atlas7_pad_config {unsigned long mux_bit; scalar_t__ mux_reg; } ;
struct TYPE_2__ {struct atlas7_pad_config* confs; } ;


 scalar_t__ CLR_REG (scalar_t__) ;
 size_t FUNC_ANALOGUE ;
 unsigned long FUNC_CLEAR_MASK ;
 int __atlas7_pmx_pin_analog_enable (struct atlas7_pmx*,struct atlas7_pad_config*,size_t) ;
 int __atlas7_pmx_pin_digital_enable (struct atlas7_pmx*,struct atlas7_pad_config*,size_t) ;
 size_t atlas7_pin_to_bank (size_t) ;
 int dev_err (int ,char*,size_t,int) ;
 int pr_debug (char*,size_t,size_t,...) ;
 unsigned long readl (scalar_t__) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int __atlas7_pmx_pin_enable(struct atlas7_pmx *pmx,
    u32 pin, u32 func)
{
 struct atlas7_pad_config *conf;
 u32 bank;
 int ret;
 unsigned long regv;

 pr_debug("PMX DUMP ### pin#%d func:%d #### START >>>\n",
   pin, func);


 conf = &pmx->pctl_data->confs[pin];
 bank = atlas7_pin_to_bank(pin);


 if (FUNC_ANALOGUE == func) {
  ret = __atlas7_pmx_pin_analog_enable(pmx, conf, bank);
  if (ret)
   dev_err(pmx->dev,
    "Convert pad#%d to analog failed, ret=%d\n",
    pin, ret);
  return ret;
 }


 ret = __atlas7_pmx_pin_digital_enable(pmx, conf, bank);
 if (ret) {
  dev_err(pmx->dev,
   "Convert pad#%d to digital failed, ret=%d\n",
   pin, ret);
  return ret;
 }


 writel(FUNC_CLEAR_MASK << conf->mux_bit,
  pmx->regs[bank] + CLR_REG(conf->mux_reg));


 regv = readl(pmx->regs[bank] + conf->mux_reg);
 regv &= ~(FUNC_CLEAR_MASK << conf->mux_bit);
 writel(regv | (func << conf->mux_bit),
   pmx->regs[bank] + conf->mux_reg);

 regv = readl(pmx->regs[bank] + conf->mux_reg);
 pr_debug("bank:%d reg:0x%04x val:0x%08lx\n",
  bank, conf->mux_reg, regv);

 return 0;
}
