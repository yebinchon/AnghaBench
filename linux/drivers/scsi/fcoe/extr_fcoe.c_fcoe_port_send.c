
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ qlen; } ;
struct fcoe_port {int lport; TYPE_1__ fcoe_pending_queue; } ;


 int fcoe_check_wait_queue (int ,struct sk_buff*) ;
 scalar_t__ fcoe_start_io (struct sk_buff*) ;

__attribute__((used)) static void fcoe_port_send(struct fcoe_port *port, struct sk_buff *skb)
{
 if (port->fcoe_pending_queue.qlen)
  fcoe_check_wait_queue(port->lport, skb);
 else if (fcoe_start_io(skb))
  fcoe_check_wait_queue(port->lport, skb);
}
