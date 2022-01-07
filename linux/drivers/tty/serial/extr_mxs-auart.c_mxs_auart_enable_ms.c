
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct mxs_auart_port {int ms_irq_enabled; scalar_t__* gpio_irq; } ;


 size_t UART_GPIO_CTS ;
 size_t UART_GPIO_DCD ;
 size_t UART_GPIO_DSR ;
 size_t UART_GPIO_RI ;
 int enable_irq (scalar_t__) ;
 struct mxs_auart_port* to_auart_port (struct uart_port*) ;

__attribute__((used)) static void mxs_auart_enable_ms(struct uart_port *port)
{
 struct mxs_auart_port *s = to_auart_port(port);




 if (s->ms_irq_enabled)
  return;

 s->ms_irq_enabled = 1;

 if (s->gpio_irq[UART_GPIO_CTS] >= 0)
  enable_irq(s->gpio_irq[UART_GPIO_CTS]);


 if (s->gpio_irq[UART_GPIO_DSR] >= 0)
  enable_irq(s->gpio_irq[UART_GPIO_DSR]);

 if (s->gpio_irq[UART_GPIO_RI] >= 0)
  enable_irq(s->gpio_irq[UART_GPIO_RI]);

 if (s->gpio_irq[UART_GPIO_DCD] >= 0)
  enable_irq(s->gpio_irq[UART_GPIO_DCD]);
}
