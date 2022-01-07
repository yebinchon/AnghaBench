
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_8__ {int stalled; int wedged; } ;
struct ast_vhub_ep {TYPE_4__ epn; } ;
struct TYPE_7__ {size_t buf_dma; } ;
struct TYPE_5__ {scalar_t__ speed; } ;
struct ast_vhub_dev {int enabled; size_t index; int wakeup_en; struct ast_vhub_ep** epns; scalar_t__ regs; TYPE_3__ ep0; TYPE_2__* vhub; TYPE_1__ gadget; } ;
struct TYPE_6__ {scalar_t__ regs; } ;


 scalar_t__ AST_VHUB_DEV_EN_CTRL ;
 scalar_t__ AST_VHUB_DEV_EP0_DATA ;
 scalar_t__ AST_VHUB_IER ;
 size_t AST_VHUB_NUM_GEN_EPs ;
 scalar_t__ USB_SPEED_HIGH ;
 size_t VHUB_DEV_EN_ENABLE_PORT ;
 size_t VHUB_DEV_EN_EP0_IN_ACK_IRQEN ;
 size_t VHUB_DEV_EN_EP0_OUT_ACK_IRQEN ;
 size_t VHUB_DEV_EN_EP0_SETUP_IRQEN ;
 size_t VHUB_DEV_EN_SPEED_SEL_HIGH ;
 size_t VHUB_IRQ_DEVICE1 ;
 int ast_vhub_reset_ep0 (struct ast_vhub_dev*) ;
 int ast_vhub_update_epn_stall (struct ast_vhub_ep*) ;
 size_t readl (scalar_t__) ;
 int writel (size_t,scalar_t__) ;

__attribute__((used)) static void ast_vhub_dev_enable(struct ast_vhub_dev *d)
{
 u32 reg, hmsk, i;

 if (d->enabled)
  return;


 ast_vhub_reset_ep0(d);


 reg = VHUB_DEV_EN_ENABLE_PORT |
  VHUB_DEV_EN_EP0_IN_ACK_IRQEN |
  VHUB_DEV_EN_EP0_OUT_ACK_IRQEN |
  VHUB_DEV_EN_EP0_SETUP_IRQEN;
 if (d->gadget.speed == USB_SPEED_HIGH)
  reg |= VHUB_DEV_EN_SPEED_SEL_HIGH;
 writel(reg, d->regs + AST_VHUB_DEV_EN_CTRL);


 hmsk = VHUB_IRQ_DEVICE1 << d->index;
 reg = readl(d->vhub->regs + AST_VHUB_IER);
 reg |= hmsk;
 writel(reg, d->vhub->regs + AST_VHUB_IER);


 writel(d->ep0.buf_dma, d->regs + AST_VHUB_DEV_EP0_DATA);


 for (i = 0; i < AST_VHUB_NUM_GEN_EPs; i++) {
  struct ast_vhub_ep *ep = d->epns[i];

  if (ep && (ep->epn.stalled || ep->epn.wedged)) {
   ep->epn.stalled = 0;
   ep->epn.wedged = 0;
   ast_vhub_update_epn_stall(ep);
  }
 }


 d->wakeup_en = 0;
 d->enabled = 1;
}
