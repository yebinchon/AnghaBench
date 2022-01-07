
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ast_vhub {int lock; int ep0; TYPE_1__* ports; int * epns; scalar_t__ regs; int ep0_bufs; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ AST_VHUB_EP_ACK_ISR ;
 scalar_t__ AST_VHUB_EP_NACK_ISR ;
 scalar_t__ AST_VHUB_ISR ;
 int AST_VHUB_NUM_GEN_EPs ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int UDCVDBG (struct ast_vhub*,char*,int,int,int) ;
 int VHUB_EP_IRQ (int) ;
 int VHUB_IRQ_BUS_RESET ;
 int VHUB_IRQ_BUS_RESUME ;
 int VHUB_IRQ_BUS_SUSPEND ;
 int VHUB_IRQ_DEVICE1 ;
 int VHUB_IRQ_DEVICE2 ;
 int VHUB_IRQ_DEVICE3 ;
 int VHUB_IRQ_DEVICE4 ;
 int VHUB_IRQ_DEVICE5 ;
 int VHUB_IRQ_EP_POOL_ACK_STALL ;
 int VHUB_IRQ_HUB_EP0_IN_ACK_STALL ;
 int VHUB_IRQ_HUB_EP0_OUT_ACK_STALL ;
 int VHUB_IRQ_HUB_EP0_SETUP ;
 int ast_vhub_dev_irq (int *) ;
 int ast_vhub_ep0_handle_ack (int *,int) ;
 int ast_vhub_ep0_handle_setup (int *) ;
 int ast_vhub_epn_ack_irq (int *) ;
 int ast_vhub_hub_reset (struct ast_vhub*) ;
 int ast_vhub_hub_resume (struct ast_vhub*) ;
 int ast_vhub_hub_suspend (struct ast_vhub*) ;
 int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t ast_vhub_irq(int irq, void *data)
{
 struct ast_vhub *vhub = data;
 irqreturn_t iret = IRQ_NONE;
 u32 istat;


 if (!vhub->ep0_bufs)
  return IRQ_NONE;

 spin_lock(&vhub->lock);


 istat = readl(vhub->regs + AST_VHUB_ISR);
 if (!istat)
  goto bail;
 writel(istat, vhub->regs + AST_VHUB_ISR);
 iret = IRQ_HANDLED;

 UDCVDBG(vhub, "irq status=%08x, ep_acks=%08x ep_nacks=%08x\n",
        istat,
        readl(vhub->regs + AST_VHUB_EP_ACK_ISR),
        readl(vhub->regs + AST_VHUB_EP_NACK_ISR));


 if (istat & VHUB_IRQ_EP_POOL_ACK_STALL) {
  u32 i, ep_acks = readl(vhub->regs + AST_VHUB_EP_ACK_ISR);
  writel(ep_acks, vhub->regs + AST_VHUB_EP_ACK_ISR);

  for (i = 0; ep_acks && i < AST_VHUB_NUM_GEN_EPs; i++) {
   u32 mask = VHUB_EP_IRQ(i);
   if (ep_acks & mask) {
    ast_vhub_epn_ack_irq(&vhub->epns[i]);
    ep_acks &= ~mask;
   }
  }
 }


 if (istat & (VHUB_IRQ_DEVICE1 |
       VHUB_IRQ_DEVICE2 |
       VHUB_IRQ_DEVICE3 |
       VHUB_IRQ_DEVICE4 |
       VHUB_IRQ_DEVICE5)) {
  if (istat & VHUB_IRQ_DEVICE1)
   ast_vhub_dev_irq(&vhub->ports[0].dev);
  if (istat & VHUB_IRQ_DEVICE2)
   ast_vhub_dev_irq(&vhub->ports[1].dev);
  if (istat & VHUB_IRQ_DEVICE3)
   ast_vhub_dev_irq(&vhub->ports[2].dev);
  if (istat & VHUB_IRQ_DEVICE4)
   ast_vhub_dev_irq(&vhub->ports[3].dev);
  if (istat & VHUB_IRQ_DEVICE5)
   ast_vhub_dev_irq(&vhub->ports[4].dev);
 }


 if (istat & (VHUB_IRQ_HUB_EP0_OUT_ACK_STALL |
       VHUB_IRQ_HUB_EP0_IN_ACK_STALL |
       VHUB_IRQ_HUB_EP0_SETUP)) {
  if (istat & VHUB_IRQ_HUB_EP0_IN_ACK_STALL)
   ast_vhub_ep0_handle_ack(&vhub->ep0, 1);
  if (istat & VHUB_IRQ_HUB_EP0_OUT_ACK_STALL)
   ast_vhub_ep0_handle_ack(&vhub->ep0, 0);
  if (istat & VHUB_IRQ_HUB_EP0_SETUP)
   ast_vhub_ep0_handle_setup(&vhub->ep0);
 }


 if (istat & (VHUB_IRQ_BUS_RESUME |
       VHUB_IRQ_BUS_SUSPEND |
       VHUB_IRQ_BUS_RESET)) {
  if (istat & VHUB_IRQ_BUS_RESUME)
   ast_vhub_hub_resume(vhub);
  if (istat & VHUB_IRQ_BUS_SUSPEND)
   ast_vhub_hub_suspend(vhub);
  if (istat & VHUB_IRQ_BUS_RESET)
   ast_vhub_hub_reset(vhub);
 }

 bail:
 spin_unlock(&vhub->lock);
 return iret;
}
