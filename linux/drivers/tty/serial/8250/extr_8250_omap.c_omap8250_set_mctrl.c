
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct uart_port {int status; } ;
struct TYPE_2__ {struct omap8250_priv* private_data; } ;
struct uart_8250_port {int gpios; TYPE_1__ port; } ;
struct omap8250_priv {int efr; } ;


 unsigned int TIOCM_RTS ;
 int UART_EFR ;
 int UART_EFR_RTS ;
 int UART_GPIO_RTS ;
 int UART_LCR ;
 int UART_LCR_CONF_MODE_B ;
 int UPSTAT_AUTORTS ;
 int mctrl_gpio_to_gpiod (int ,int ) ;
 int serial8250_do_set_mctrl (struct uart_port*,unsigned int) ;
 int serial_in (struct uart_8250_port*,int ) ;
 int serial_out (struct uart_8250_port*,int ,int ) ;
 struct uart_8250_port* up_to_u8250p (struct uart_port*) ;

__attribute__((used)) static void omap8250_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 struct uart_8250_port *up = up_to_u8250p(port);
 struct omap8250_priv *priv = up->port.private_data;
 u8 lcr;

 serial8250_do_set_mctrl(port, mctrl);

 if (!mctrl_gpio_to_gpiod(up->gpios, UART_GPIO_RTS)) {




  lcr = serial_in(up, UART_LCR);
  serial_out(up, UART_LCR, UART_LCR_CONF_MODE_B);
  if ((mctrl & TIOCM_RTS) && (port->status & UPSTAT_AUTORTS))
   priv->efr |= UART_EFR_RTS;
  else
   priv->efr &= ~UART_EFR_RTS;
  serial_out(up, UART_EFR, priv->efr);
  serial_out(up, UART_LCR, lcr);
 }
}
