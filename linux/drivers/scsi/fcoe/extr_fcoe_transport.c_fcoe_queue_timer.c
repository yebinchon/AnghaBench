
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct fcoe_port {int lport; } ;


 int fcoe_check_wait_queue (int ,int *) ;
 struct fcoe_port* from_timer (int ,struct timer_list*,int ) ;
 struct fcoe_port* port ;
 int timer ;

void fcoe_queue_timer(struct timer_list *t)
{
 struct fcoe_port *port = from_timer(port, t, timer);

 fcoe_check_wait_queue(port->lport, ((void*)0));
}
