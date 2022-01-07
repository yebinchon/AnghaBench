
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ast_vhub_dev {int ep0; scalar_t__ regs; } ;


 scalar_t__ AST_VHUB_DEV_ISR ;
 int VHUV_DEV_IRQ_EP0_IN_ACK_STALL ;
 int VHUV_DEV_IRQ_EP0_OUT_ACK_STALL ;
 int VHUV_DEV_IRQ_EP0_SETUP ;
 int ast_vhub_ep0_handle_ack (int *,int) ;
 int ast_vhub_ep0_handle_setup (int *) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

void ast_vhub_dev_irq(struct ast_vhub_dev *d)
{
 u32 istat = readl(d->regs + AST_VHUB_DEV_ISR);

 writel(istat, d->regs + AST_VHUB_DEV_ISR);

 if (istat & VHUV_DEV_IRQ_EP0_IN_ACK_STALL)
  ast_vhub_ep0_handle_ack(&d->ep0, 1);
 if (istat & VHUV_DEV_IRQ_EP0_OUT_ACK_STALL)
  ast_vhub_ep0_handle_ack(&d->ep0, 0);
 if (istat & VHUV_DEV_IRQ_EP0_SETUP)
  ast_vhub_ep0_handle_setup(&d->ep0);
}
