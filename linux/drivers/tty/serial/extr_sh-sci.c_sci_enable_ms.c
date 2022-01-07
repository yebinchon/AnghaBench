
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int gpios; } ;


 int mctrl_gpio_enable_ms (int ) ;
 TYPE_1__* to_sci_port (struct uart_port*) ;

__attribute__((used)) static void sci_enable_ms(struct uart_port *port)
{
 mctrl_gpio_enable_ms(to_sci_port(port)->gpios);
}
