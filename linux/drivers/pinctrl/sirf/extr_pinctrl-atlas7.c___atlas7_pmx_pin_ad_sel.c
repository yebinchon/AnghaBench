
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct atlas7_pmx {scalar_t__* regs; } ;
struct atlas7_pad_config {unsigned long ad_ctrl_bit; scalar_t__ ad_ctrl_reg; } ;


 unsigned long ANA_CLEAR_MASK ;
 scalar_t__ CLR_REG (scalar_t__) ;
 int pr_debug (char*,size_t,scalar_t__,unsigned long) ;
 unsigned long readl (scalar_t__) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int __atlas7_pmx_pin_ad_sel(struct atlas7_pmx *pmx,
   struct atlas7_pad_config *conf,
   u32 bank, u32 ad_sel)
{
 unsigned long regv;


 writel(ANA_CLEAR_MASK << conf->ad_ctrl_bit,
  pmx->regs[bank] + CLR_REG(conf->ad_ctrl_reg));


 regv = readl(pmx->regs[bank] + conf->ad_ctrl_reg);
 regv &= ~(ANA_CLEAR_MASK << conf->ad_ctrl_bit);
 writel(regv | (ad_sel << conf->ad_ctrl_bit),
   pmx->regs[bank] + conf->ad_ctrl_reg);

 regv = readl(pmx->regs[bank] + conf->ad_ctrl_reg);
 pr_debug("bank:%d reg:0x%04x val:0x%08lx\n",
   bank, conf->ad_ctrl_reg, regv);
 return 0;
}
