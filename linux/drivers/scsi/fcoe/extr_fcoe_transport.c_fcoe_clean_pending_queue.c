
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct fcoe_port {TYPE_1__ fcoe_pending_queue; } ;
struct fc_lport {int dummy; } ;


 struct sk_buff* __skb_dequeue (TYPE_1__*) ;
 int kfree_skb (struct sk_buff*) ;
 struct fcoe_port* lport_priv (struct fc_lport*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void fcoe_clean_pending_queue(struct fc_lport *lport)
{
 struct fcoe_port *port = lport_priv(lport);
 struct sk_buff *skb;

 spin_lock_bh(&port->fcoe_pending_queue.lock);
 while ((skb = __skb_dequeue(&port->fcoe_pending_queue)) != ((void*)0)) {
  spin_unlock_bh(&port->fcoe_pending_queue.lock);
  kfree_skb(skb);
  spin_lock_bh(&port->fcoe_pending_queue.lock);
 }
 spin_unlock_bh(&port->fcoe_pending_queue.lock);
}
