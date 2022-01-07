
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_4__ {scalar_t__ qlen; int lock; } ;
struct fcoe_port {int fcoe_pending_queue_active; scalar_t__ min_queue_depth; scalar_t__ max_queue_depth; TYPE_1__ fcoe_pending_queue; int timer; } ;
struct fc_lport {int qfull; } ;


 struct sk_buff* __skb_dequeue (TYPE_1__*) ;
 int __skb_queue_head (TYPE_1__*,struct sk_buff*) ;
 int __skb_queue_tail (TYPE_1__*,struct sk_buff*) ;
 int fcoe_start_io (struct sk_buff*) ;
 scalar_t__ jiffies ;
 struct fcoe_port* lport_priv (struct fc_lport*) ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int timer_pending (int *) ;

void fcoe_check_wait_queue(struct fc_lport *lport, struct sk_buff *skb)
{
 struct fcoe_port *port = lport_priv(lport);
 int rc;

 spin_lock_bh(&port->fcoe_pending_queue.lock);

 if (skb)
  __skb_queue_tail(&port->fcoe_pending_queue, skb);

 if (port->fcoe_pending_queue_active)
  goto out;
 port->fcoe_pending_queue_active = 1;

 while (port->fcoe_pending_queue.qlen) {

  port->fcoe_pending_queue.qlen++;
  skb = __skb_dequeue(&port->fcoe_pending_queue);

  spin_unlock_bh(&port->fcoe_pending_queue.lock);
  rc = fcoe_start_io(skb);
  spin_lock_bh(&port->fcoe_pending_queue.lock);

  if (rc) {
   __skb_queue_head(&port->fcoe_pending_queue, skb);

   port->fcoe_pending_queue.qlen--;
   break;
  }

  port->fcoe_pending_queue.qlen--;
 }

 if (port->fcoe_pending_queue.qlen < port->min_queue_depth)
  lport->qfull = 0;
 if (port->fcoe_pending_queue.qlen && !timer_pending(&port->timer))
  mod_timer(&port->timer, jiffies + 2);
 port->fcoe_pending_queue_active = 0;
out:
 if (port->fcoe_pending_queue.qlen > port->max_queue_depth)
  lport->qfull = 1;
 spin_unlock_bh(&port->fcoe_pending_queue.lock);
}
