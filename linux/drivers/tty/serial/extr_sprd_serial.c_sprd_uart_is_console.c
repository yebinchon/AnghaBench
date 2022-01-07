
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {scalar_t__ line; } ;
struct console {scalar_t__ index; } ;
struct TYPE_2__ {struct console* cons; } ;


 TYPE_1__ sprd_uart_driver ;

__attribute__((used)) static bool sprd_uart_is_console(struct uart_port *uport)
{
 struct console *cons = sprd_uart_driver.cons;

 if (cons && cons->index >= 0 && cons->index == uport->line)
  return 1;

 return 0;
}
