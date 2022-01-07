
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gigaset_capi_appl {struct gigaset_capi_appl* bcnext; } ;
struct bc_state {int aplock; int apconnstate; struct gigaset_capi_appl* ap; } ;


 int APCONN_NONE ;
 int send_disconnect_b3_ind (struct bc_state*,struct gigaset_capi_appl*) ;
 int send_disconnect_ind (struct bc_state*,struct gigaset_capi_appl*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void gigaset_isdn_hupD(struct bc_state *bcs)
{
 struct gigaset_capi_appl *ap;
 unsigned long flags;






 spin_lock_irqsave(&bcs->aplock, flags);
 while (bcs->ap != ((void*)0)) {
  ap = bcs->ap;
  bcs->ap = ap->bcnext;
  spin_unlock_irqrestore(&bcs->aplock, flags);
  send_disconnect_b3_ind(bcs, ap);
  send_disconnect_ind(bcs, ap, 0);
  spin_lock_irqsave(&bcs->aplock, flags);
 }
 bcs->apconnstate = APCONN_NONE;
 spin_unlock_irqrestore(&bcs->aplock, flags);
}
