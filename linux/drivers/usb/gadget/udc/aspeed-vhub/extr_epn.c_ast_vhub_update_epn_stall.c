
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int g_idx; scalar_t__ wedged; scalar_t__ stalled; scalar_t__ regs; } ;
struct ast_vhub_ep {scalar_t__ d_idx; TYPE_2__* vhub; TYPE_1__ epn; } ;
struct TYPE_4__ {scalar_t__ regs; } ;


 scalar_t__ AST_VHUB_EP_CONFIG ;
 scalar_t__ AST_VHUB_EP_TOGGLE ;
 int VHUB_EP_CFG_STALL_CTRL ;
 int VHUB_EP_TOGGLE_SET_EPNUM (int ) ;
 scalar_t__ WARN_ON (int) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

void ast_vhub_update_epn_stall(struct ast_vhub_ep *ep)
{
 u32 reg;

 if (WARN_ON(ep->d_idx == 0))
  return;
 reg = readl(ep->epn.regs + AST_VHUB_EP_CONFIG);
 if (ep->epn.stalled || ep->epn.wedged)
  reg |= VHUB_EP_CFG_STALL_CTRL;
 else
  reg &= ~VHUB_EP_CFG_STALL_CTRL;
 writel(reg, ep->epn.regs + AST_VHUB_EP_CONFIG);

 if (!ep->epn.stalled && !ep->epn.wedged)
  writel(VHUB_EP_TOGGLE_SET_EPNUM(ep->epn.g_idx),
         ep->vhub->regs + AST_VHUB_EP_TOGGLE);
}
