
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ep {int desc; } ;
struct TYPE_2__ {int stalled; int wedged; scalar_t__ is_in; scalar_t__ is_iso; } ;
struct ast_vhub_ep {scalar_t__ d_idx; TYPE_1__ epn; int queue; struct ast_vhub* vhub; } ;
struct ast_vhub {int lock; } ;


 int EAGAIN ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int EPDBG (struct ast_vhub_ep*,char*,int,int) ;
 int ast_vhub_update_epn_stall (struct ast_vhub_ep*) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ast_vhub_ep* to_ast_ep (struct usb_ep*) ;

__attribute__((used)) static int ast_vhub_set_halt_and_wedge(struct usb_ep* u_ep, bool halt,
          bool wedge)
{
 struct ast_vhub_ep *ep = to_ast_ep(u_ep);
 struct ast_vhub *vhub = ep->vhub;
 unsigned long flags;

 EPDBG(ep, "Set halt (%d) & wedge (%d)\n", halt, wedge);

 if (!u_ep || !u_ep->desc)
  return -EINVAL;
 if (ep->d_idx == 0)
  return 0;
 if (ep->epn.is_iso)
  return -EOPNOTSUPP;

 spin_lock_irqsave(&vhub->lock, flags);


 if (halt && ep->epn.is_in && !list_empty(&ep->queue)) {
  spin_unlock_irqrestore(&vhub->lock, flags);
  return -EAGAIN;
 }
 ep->epn.stalled = halt;
 ep->epn.wedged = wedge;
 ast_vhub_update_epn_stall(ep);

 spin_unlock_irqrestore(&vhub->lock, flags);

 return 0;
}
