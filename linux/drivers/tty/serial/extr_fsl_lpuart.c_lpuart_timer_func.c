
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct lpuart_port {int dummy; } ;


 struct lpuart_port* from_timer (int ,struct timer_list*,int ) ;
 int lpuart_copy_rx_to_tty (struct lpuart_port*) ;
 int lpuart_timer ;
 struct lpuart_port* sport ;

__attribute__((used)) static void lpuart_timer_func(struct timer_list *t)
{
 struct lpuart_port *sport = from_timer(sport, t, lpuart_timer);

 lpuart_copy_rx_to_tty(sport);
}
