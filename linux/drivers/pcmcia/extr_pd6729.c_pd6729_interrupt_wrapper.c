
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct pd6729_socket {int poll_timer; } ;


 scalar_t__ HZ ;
 struct pd6729_socket* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int pd6729_interrupt (int ,void*) ;
 int poll_timer ;
 struct pd6729_socket* socket ;

__attribute__((used)) static void pd6729_interrupt_wrapper(struct timer_list *t)
{
 struct pd6729_socket *socket = from_timer(socket, t, poll_timer);

 pd6729_interrupt(0, (void *)socket);
 mod_timer(&socket->poll_timer, jiffies + HZ);
}
