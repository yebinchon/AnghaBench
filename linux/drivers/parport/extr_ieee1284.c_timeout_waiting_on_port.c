
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct parport {int dummy; } ;


 struct parport* from_timer (int ,struct timer_list*,int ) ;
 int parport_ieee1284_wakeup (struct parport*) ;
 struct parport* port ;
 int timer ;

__attribute__((used)) static void timeout_waiting_on_port (struct timer_list *t)
{
 struct parport *port = from_timer(port, t, timer);

 parport_ieee1284_wakeup (port);
}
