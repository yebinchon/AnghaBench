
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct usb_ep {int dummy; } ;
struct TYPE_4__ {int * desc; } ;
struct TYPE_3__ {int enabled; int g_idx; scalar_t__ regs; } ;
struct ast_vhub_ep {TYPE_2__ ep; TYPE_1__ epn; struct ast_vhub* vhub; } ;
struct ast_vhub {int lock; scalar_t__ regs; } ;


 scalar_t__ AST_VHUB_EP_ACK_IER ;
 scalar_t__ AST_VHUB_EP_ACK_ISR ;
 scalar_t__ AST_VHUB_EP_CONFIG ;
 int EPDBG (struct ast_vhub_ep*,char*) ;
 int ESHUTDOWN ;
 int VHUB_EP_IRQ (int ) ;
 int ast_vhub_nuke (struct ast_vhub_ep*,int ) ;
 int ast_vhub_stop_active_req (struct ast_vhub_ep*,int) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ast_vhub_ep* to_ast_ep (struct usb_ep*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int ast_vhub_epn_disable(struct usb_ep* u_ep)
{
 struct ast_vhub_ep *ep = to_ast_ep(u_ep);
 struct ast_vhub *vhub = ep->vhub;
 unsigned long flags;
 u32 imask, ep_ier;

 EPDBG(ep, "Disabling !\n");

 spin_lock_irqsave(&vhub->lock, flags);

 ep->epn.enabled = 0;


 ast_vhub_stop_active_req(ep, 0);


 writel(0, ep->epn.regs + AST_VHUB_EP_CONFIG);


 imask = VHUB_EP_IRQ(ep->epn.g_idx);
 ep_ier = readl(vhub->regs + AST_VHUB_EP_ACK_IER);
 ep_ier &= ~imask;
 writel(ep_ier, vhub->regs + AST_VHUB_EP_ACK_IER);
 writel(imask, vhub->regs + AST_VHUB_EP_ACK_ISR);


 ast_vhub_nuke(ep, -ESHUTDOWN);


 ep->ep.desc = ((void*)0);

 spin_unlock_irqrestore(&vhub->lock, flags);

 return 0;
}
