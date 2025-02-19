
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_port {int dummy; } ;
struct atmel_uart_port {int ms_irq_enabled; int gpios; } ;


 int ATMEL_US_CTSIC ;
 int ATMEL_US_DCDIC ;
 int ATMEL_US_DSRIC ;
 int ATMEL_US_IER ;
 int ATMEL_US_RIIC ;
 int UART_GPIO_CTS ;
 int UART_GPIO_DCD ;
 int UART_GPIO_DSR ;
 int UART_GPIO_RI ;
 int atmel_uart_writel (struct uart_port*,int ,int ) ;
 int mctrl_gpio_enable_ms (int ) ;
 int mctrl_gpio_to_gpiod (int ,int ) ;
 struct atmel_uart_port* to_atmel_uart_port (struct uart_port*) ;

__attribute__((used)) static void atmel_enable_ms(struct uart_port *port)
{
 struct atmel_uart_port *atmel_port = to_atmel_uart_port(port);
 uint32_t ier = 0;




 if (atmel_port->ms_irq_enabled)
  return;

 atmel_port->ms_irq_enabled = 1;

 if (!mctrl_gpio_to_gpiod(atmel_port->gpios, UART_GPIO_CTS))
  ier |= ATMEL_US_CTSIC;

 if (!mctrl_gpio_to_gpiod(atmel_port->gpios, UART_GPIO_DSR))
  ier |= ATMEL_US_DSRIC;

 if (!mctrl_gpio_to_gpiod(atmel_port->gpios, UART_GPIO_RI))
  ier |= ATMEL_US_RIIC;

 if (!mctrl_gpio_to_gpiod(atmel_port->gpios, UART_GPIO_DCD))
  ier |= ATMEL_US_DCDIC;

 atmel_uart_writel(port, ATMEL_US_IER, ier);

 mctrl_gpio_enable_ms(atmel_port->gpios);
}
