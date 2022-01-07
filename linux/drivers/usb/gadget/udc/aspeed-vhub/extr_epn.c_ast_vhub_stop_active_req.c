
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int dma_conf; scalar_t__ regs; int d_next; scalar_t__ desc_mode; } ;
struct ast_vhub_ep {TYPE_3__ epn; TYPE_2__* vhub; } ;
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ AST_VHUB_EP_DESC_STATUS ;
 scalar_t__ AST_VHUB_EP_DMA_CTLSTAT ;
 int EP_DMA_PROC_RX_IDLE ;
 int EP_DMA_PROC_TX_IDLE ;
 int VHUB_EP_DMA_PROC_STATUS (int) ;
 int VHUB_EP_DMA_SET_CPU_WPTR (int ) ;
 int VHUB_EP_DMA_SET_RPTR (int ) ;
 int dev_warn (int *,char*) ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void ast_vhub_stop_active_req(struct ast_vhub_ep *ep,
         bool restart_ep)
{
 u32 state, reg, loops;


 writel(0, ep->epn.regs + AST_VHUB_EP_DMA_CTLSTAT);


 for (loops = 0; loops < 1000; loops++) {
  state = readl(ep->epn.regs + AST_VHUB_EP_DMA_CTLSTAT);
  state = VHUB_EP_DMA_PROC_STATUS(state);
  if (state == EP_DMA_PROC_RX_IDLE ||
      state == EP_DMA_PROC_TX_IDLE)
   break;
  udelay(1);
 }
 if (loops >= 1000)
  dev_warn(&ep->vhub->pdev->dev, "Timeout waiting for DMA\n");


 if (!restart_ep)
  return;


 if (ep->epn.desc_mode) {
  reg = VHUB_EP_DMA_SET_RPTR(ep->epn.d_next) |
   VHUB_EP_DMA_SET_CPU_WPTR(ep->epn.d_next);
  writel(reg, ep->epn.regs + AST_VHUB_EP_DESC_STATUS);


  writel(ep->epn.dma_conf,
         ep->epn.regs + AST_VHUB_EP_DMA_CTLSTAT);
 } else {

  writel(ep->epn.dma_conf,
         ep->epn.regs + AST_VHUB_EP_DMA_CTLSTAT);
 }
}
