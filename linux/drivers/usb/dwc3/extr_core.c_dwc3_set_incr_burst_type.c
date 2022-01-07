
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3 {int regs; struct device* dev; } ;
struct device {int dummy; } ;


 int DWC3_GSBUSCFG0 ;
 int DWC3_GSBUSCFG0_INCR128BRSTENA ;
 int DWC3_GSBUSCFG0_INCR16BRSTENA ;
 int DWC3_GSBUSCFG0_INCR256BRSTENA ;
 int DWC3_GSBUSCFG0_INCR32BRSTENA ;
 int DWC3_GSBUSCFG0_INCR4BRSTENA ;
 int DWC3_GSBUSCFG0_INCR64BRSTENA ;
 int DWC3_GSBUSCFG0_INCR8BRSTENA ;
 int DWC3_GSBUSCFG0_INCRBRSTENA ;
 int DWC3_GSBUSCFG0_INCRBRST_MASK ;
 int GFP_KERNEL ;
 int INCRX_BURST_MODE ;
 int INCRX_UNDEF_LENGTH_BURST_MODE ;
 int dev_err (struct device*,char*) ;
 int device_property_count_u32 (struct device*,char*) ;
 int device_property_read_u32_array (struct device*,char*,int*,int) ;
 int dwc3_readl (int ,int ) ;
 int dwc3_writel (int ,int ,int) ;
 int* kcalloc (int,int,int ) ;
 int kfree (int*) ;

__attribute__((used)) static void dwc3_set_incr_burst_type(struct dwc3 *dwc)
{
 struct device *dev = dwc->dev;

 bool incrx_mode;

 u32 incrx_size;
 u32 *vals;
 u32 cfg;
 int ntype;
 int ret;
 int i;

 cfg = dwc3_readl(dwc->regs, DWC3_GSBUSCFG0);
 ntype = device_property_count_u32(dev, "snps,incr-burst-type-adjustment");
 if (ntype <= 0)
  return;

 vals = kcalloc(ntype, sizeof(u32), GFP_KERNEL);
 if (!vals) {
  dev_err(dev, "Error to get memory\n");
  return;
 }


 ret = device_property_read_u32_array(dev,
   "snps,incr-burst-type-adjustment", vals, ntype);
 if (ret) {
  kfree(vals);
  dev_err(dev, "Error to get property\n");
  return;
 }

 incrx_size = *vals;

 if (ntype > 1) {

  incrx_mode = INCRX_UNDEF_LENGTH_BURST_MODE;
  for (i = 1; i < ntype; i++) {
   if (vals[i] > incrx_size)
    incrx_size = vals[i];
  }
 } else {

  incrx_mode = INCRX_BURST_MODE;
 }

 kfree(vals);


 cfg &= ~DWC3_GSBUSCFG0_INCRBRST_MASK;
 if (incrx_mode)
  cfg |= DWC3_GSBUSCFG0_INCRBRSTENA;
 switch (incrx_size) {
 case 256:
  cfg |= DWC3_GSBUSCFG0_INCR256BRSTENA;
  break;
 case 128:
  cfg |= DWC3_GSBUSCFG0_INCR128BRSTENA;
  break;
 case 64:
  cfg |= DWC3_GSBUSCFG0_INCR64BRSTENA;
  break;
 case 32:
  cfg |= DWC3_GSBUSCFG0_INCR32BRSTENA;
  break;
 case 16:
  cfg |= DWC3_GSBUSCFG0_INCR16BRSTENA;
  break;
 case 8:
  cfg |= DWC3_GSBUSCFG0_INCR8BRSTENA;
  break;
 case 4:
  cfg |= DWC3_GSBUSCFG0_INCR4BRSTENA;
  break;
 case 1:
  break;
 default:
  dev_err(dev, "Invalid property\n");
  break;
 }

 dwc3_writel(dwc->regs, DWC3_GSBUSCFG0, cfg);
}
