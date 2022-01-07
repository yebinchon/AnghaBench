
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int ahbcfg; int dma_desc_enable; scalar_t__ host_dma; } ;
struct TYPE_4__ {int arch; } ;
struct dwc2_hsotg {TYPE_1__ params; int dev; TYPE_2__ hw_params; } ;


 int EINVAL ;
 int GAHBCFG ;
 int GAHBCFG_CTRL_MASK ;
 int GAHBCFG_DMA_EN ;



 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_writel (struct dwc2_hsotg*,int,int ) ;

__attribute__((used)) static int dwc2_gahbcfg_init(struct dwc2_hsotg *hsotg)
{
 u32 ahbcfg = dwc2_readl(hsotg, GAHBCFG);

 switch (hsotg->hw_params.arch) {
 case 130:
  dev_err(hsotg->dev, "External DMA Mode not supported\n");
  return -EINVAL;

 case 129:
  dev_dbg(hsotg->dev, "Internal DMA Mode\n");
  if (hsotg->params.ahbcfg != -1) {
   ahbcfg &= GAHBCFG_CTRL_MASK;
   ahbcfg |= hsotg->params.ahbcfg &
      ~GAHBCFG_CTRL_MASK;
  }
  break;

 case 128:
 default:
  dev_dbg(hsotg->dev, "Slave Only Mode\n");
  break;
 }

 if (hsotg->params.host_dma)
  ahbcfg |= GAHBCFG_DMA_EN;
 else
  hsotg->params.dma_desc_enable = 0;

 dwc2_writel(hsotg, ahbcfg, GAHBCFG);

 return 0;
}
