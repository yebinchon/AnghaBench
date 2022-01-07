
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bdc {int dev; int regs; } ;


 int BDC_EPSTS0 ;
 int BDC_EPSTS1 ;
 int BDC_EPSTS2 ;
 int BDC_EPSTS3 ;
 int BDC_EPSTS4 ;
 int BDC_EPSTS5 ;
 int BDC_EPSTS6 ;
 int BDC_EPSTS7 ;
 int bdc_readl (int ,int ) ;
 int dev_vdbg (int ,char*,int ) ;

void bdc_dump_epsts(struct bdc *bdc)
{
 u32 temp;

 temp = bdc_readl(bdc->regs, BDC_EPSTS0);
 dev_vdbg(bdc->dev, "BDC_EPSTS0:0x%08x\n", temp);

 temp = bdc_readl(bdc->regs, BDC_EPSTS1);
 dev_vdbg(bdc->dev, "BDC_EPSTS1:0x%x\n", temp);

 temp = bdc_readl(bdc->regs, BDC_EPSTS2);
 dev_vdbg(bdc->dev, "BDC_EPSTS2:0x%08x\n", temp);

 temp = bdc_readl(bdc->regs, BDC_EPSTS3);
 dev_vdbg(bdc->dev, "BDC_EPSTS3:0x%08x\n", temp);

 temp = bdc_readl(bdc->regs, BDC_EPSTS4);
 dev_vdbg(bdc->dev, "BDC_EPSTS4:0x%08x\n", temp);

 temp = bdc_readl(bdc->regs, BDC_EPSTS5);
 dev_vdbg(bdc->dev, "BDC_EPSTS5:0x%08x\n", temp);

 temp = bdc_readl(bdc->regs, BDC_EPSTS6);
 dev_vdbg(bdc->dev, "BDC_EPSTS6:0x%08x\n", temp);

 temp = bdc_readl(bdc->regs, BDC_EPSTS7);
 dev_vdbg(bdc->dev, "BDC_EPSTS7:0x%08x\n", temp);
}
