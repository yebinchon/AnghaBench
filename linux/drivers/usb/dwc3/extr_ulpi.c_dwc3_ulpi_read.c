
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct dwc3 {int regs; } ;
struct device {int dummy; } ;


 int DWC3_GUSB2PHYACC (int ) ;
 int DWC3_GUSB2PHYACC_DATA (int) ;
 int DWC3_GUSB2PHYACC_NEWREGREQ ;
 int DWC3_GUSB2PHYCFG (int ) ;
 int DWC3_GUSB2PHYCFG_SUSPHY ;
 int DWC3_ULPI_ADDR (int ) ;
 struct dwc3* dev_get_drvdata (struct device*) ;
 int dwc3_readl (int ,int ) ;
 int dwc3_ulpi_busyloop (struct dwc3*) ;
 int dwc3_writel (int ,int ,int) ;

__attribute__((used)) static int dwc3_ulpi_read(struct device *dev, u8 addr)
{
 struct dwc3 *dwc = dev_get_drvdata(dev);
 u32 reg;
 int ret;

 reg = dwc3_readl(dwc->regs, DWC3_GUSB2PHYCFG(0));
 if (reg & DWC3_GUSB2PHYCFG_SUSPHY) {
  reg &= ~DWC3_GUSB2PHYCFG_SUSPHY;
  dwc3_writel(dwc->regs, DWC3_GUSB2PHYCFG(0), reg);
 }

 reg = DWC3_GUSB2PHYACC_NEWREGREQ | DWC3_ULPI_ADDR(addr);
 dwc3_writel(dwc->regs, DWC3_GUSB2PHYACC(0), reg);

 ret = dwc3_ulpi_busyloop(dwc);
 if (ret)
  return ret;

 reg = dwc3_readl(dwc->regs, DWC3_GUSB2PHYACC(0));

 return DWC3_GUSB2PHYACC_DATA(reg);
}
