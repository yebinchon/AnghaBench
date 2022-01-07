
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct yenta_socket {TYPE_1__ poll_timer; } ;
struct timer_list {int dummy; } ;


 scalar_t__ HZ ;
 int add_timer (TYPE_1__*) ;
 struct yenta_socket* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int poll_timer ;
 struct yenta_socket* socket ;
 int yenta_interrupt (int ,void*) ;

__attribute__((used)) static void yenta_interrupt_wrapper(struct timer_list *t)
{
 struct yenta_socket *socket = from_timer(socket, t, poll_timer);

 yenta_interrupt(0, (void *)socket);
 socket->poll_timer.expires = jiffies + HZ;
 add_timer(&socket->poll_timer);
}
