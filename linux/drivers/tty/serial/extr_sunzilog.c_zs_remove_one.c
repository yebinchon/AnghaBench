
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_sunzilog_port {int port; int serio; } ;


 scalar_t__ ZS_IS_KEYB (struct uart_sunzilog_port*) ;
 scalar_t__ ZS_IS_MOUSE (struct uart_sunzilog_port*) ;
 int serio_unregister_port (int *) ;
 int sunzilog_reg ;
 int uart_remove_one_port (int *,int *) ;

__attribute__((used)) static void zs_remove_one(struct uart_sunzilog_port *up)
{
 if (ZS_IS_KEYB(up) || ZS_IS_MOUSE(up)) {



 } else
  uart_remove_one_port(&sunzilog_reg, &up->port);
}
