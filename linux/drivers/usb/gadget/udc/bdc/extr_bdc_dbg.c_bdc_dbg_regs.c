
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bdc {int dev; int regs; } ;


 int BDC_BDCCAP0 ;
 int BDC_BDCCAP1 ;
 int BDC_BDCCFG0 ;
 int BDC_BDCCFG1 ;
 int BDC_DVCSA ;
 int BDC_DVCSB ;
 int BDC_USPC ;
 int bdc_readl (int ,int ) ;
 int dev_vdbg (int ,char*,int ) ;

void bdc_dbg_regs(struct bdc *bdc)
{
 u32 temp;

 dev_vdbg(bdc->dev, "bdc->regs:%p\n", bdc->regs);
 temp = bdc_readl(bdc->regs, BDC_BDCCFG0);
 dev_vdbg(bdc->dev, "bdccfg0:0x%08x\n", temp);
 temp = bdc_readl(bdc->regs, BDC_BDCCFG1);
 dev_vdbg(bdc->dev, "bdccfg1:0x%08x\n", temp);
 temp = bdc_readl(bdc->regs, BDC_BDCCAP0);
 dev_vdbg(bdc->dev, "bdccap0:0x%08x\n", temp);
 temp = bdc_readl(bdc->regs, BDC_BDCCAP1);
 dev_vdbg(bdc->dev, "bdccap1:0x%08x\n", temp);
 temp = bdc_readl(bdc->regs, BDC_USPC);
 dev_vdbg(bdc->dev, "uspc:0x%08x\n", temp);
 temp = bdc_readl(bdc->regs, BDC_DVCSA);
 dev_vdbg(bdc->dev, "dvcsa:0x%08x\n", temp);
 temp = bdc_readl(bdc->regs, BDC_DVCSB);
 dev_vdbg(bdc->dev, "dvcsb:0x%x08\n", temp);
}
