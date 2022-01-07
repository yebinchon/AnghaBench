
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ snpsid; } ;
struct dwc2_core_params {int host_rx_fifo_size; int host_nperio_tx_fifo_size; int host_perio_tx_fifo_size; scalar_t__ en_multiple_tx_fifo; int enable_dynamic_fifo; } ;
struct dwc2_hsotg {TYPE_1__ hw_params; struct dwc2_core_params params; int dev; } ;


 scalar_t__ DWC2_CORE_REV_2_91a ;
 int FIFOSIZE_DEPTH_MASK ;
 int FIFOSIZE_DEPTH_SHIFT ;
 int FIFOSIZE_STARTADDR_MASK ;
 int FIFOSIZE_STARTADDR_SHIFT ;
 int GDFIFOCFG ;
 int GDFIFOCFG_EPINFOBASE_MASK ;
 int GDFIFOCFG_EPINFOBASE_SHIFT ;
 int GNPTXFSIZ ;
 int GRXFSIZ ;
 int GRXFSIZ_DEPTH_MASK ;
 int GRXFSIZ_DEPTH_SHIFT ;
 int HPTXFSIZ ;
 int dev_dbg (int ,char*,int) ;
 int dwc2_calculate_dynamic_fifo (struct dwc2_hsotg*) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;
 int dwc2_writel (struct dwc2_hsotg*,int,int ) ;

__attribute__((used)) static void dwc2_config_fifos(struct dwc2_hsotg *hsotg)
{
 struct dwc2_core_params *params = &hsotg->params;
 u32 nptxfsiz, hptxfsiz, dfifocfg, grxfsiz;

 if (!params->enable_dynamic_fifo)
  return;

 dwc2_calculate_dynamic_fifo(hsotg);


 grxfsiz = dwc2_readl(hsotg, GRXFSIZ);
 dev_dbg(hsotg->dev, "initial grxfsiz=%08x\n", grxfsiz);
 grxfsiz &= ~GRXFSIZ_DEPTH_MASK;
 grxfsiz |= params->host_rx_fifo_size <<
     GRXFSIZ_DEPTH_SHIFT & GRXFSIZ_DEPTH_MASK;
 dwc2_writel(hsotg, grxfsiz, GRXFSIZ);
 dev_dbg(hsotg->dev, "new grxfsiz=%08x\n",
  dwc2_readl(hsotg, GRXFSIZ));


 dev_dbg(hsotg->dev, "initial gnptxfsiz=%08x\n",
  dwc2_readl(hsotg, GNPTXFSIZ));
 nptxfsiz = params->host_nperio_tx_fifo_size <<
     FIFOSIZE_DEPTH_SHIFT & FIFOSIZE_DEPTH_MASK;
 nptxfsiz |= params->host_rx_fifo_size <<
      FIFOSIZE_STARTADDR_SHIFT & FIFOSIZE_STARTADDR_MASK;
 dwc2_writel(hsotg, nptxfsiz, GNPTXFSIZ);
 dev_dbg(hsotg->dev, "new gnptxfsiz=%08x\n",
  dwc2_readl(hsotg, GNPTXFSIZ));


 dev_dbg(hsotg->dev, "initial hptxfsiz=%08x\n",
  dwc2_readl(hsotg, HPTXFSIZ));
 hptxfsiz = params->host_perio_tx_fifo_size <<
     FIFOSIZE_DEPTH_SHIFT & FIFOSIZE_DEPTH_MASK;
 hptxfsiz |= (params->host_rx_fifo_size +
       params->host_nperio_tx_fifo_size) <<
      FIFOSIZE_STARTADDR_SHIFT & FIFOSIZE_STARTADDR_MASK;
 dwc2_writel(hsotg, hptxfsiz, HPTXFSIZ);
 dev_dbg(hsotg->dev, "new hptxfsiz=%08x\n",
  dwc2_readl(hsotg, HPTXFSIZ));

 if (hsotg->params.en_multiple_tx_fifo &&
     hsotg->hw_params.snpsid >= DWC2_CORE_REV_2_91a) {





  dfifocfg = dwc2_readl(hsotg, GDFIFOCFG);
  dfifocfg &= ~GDFIFOCFG_EPINFOBASE_MASK;
  dfifocfg |= (params->host_rx_fifo_size +
        params->host_nperio_tx_fifo_size +
        params->host_perio_tx_fifo_size) <<
       GDFIFOCFG_EPINFOBASE_SHIFT &
       GDFIFOCFG_EPINFOBASE_MASK;
  dwc2_writel(hsotg, dfifocfg, GDFIFOCFG);
 }
}
