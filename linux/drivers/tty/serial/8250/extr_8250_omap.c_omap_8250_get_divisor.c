
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {unsigned int uartclk; int flags; int custom_divisor; } ;
struct omap8250_priv {int quot; void* mdr1; } ;


 unsigned int DIV_ROUND_CLOSEST (unsigned int,int) ;
 int UART_DIV_MAX ;
 void* UART_OMAP_MDR1_13X_MODE ;
 void* UART_OMAP_MDR1_16X_MODE ;
 int UPF_SPD_CUST ;
 int UPF_SPD_MASK ;
 unsigned int abs (unsigned int) ;

__attribute__((used)) static void omap_8250_get_divisor(struct uart_port *port, unsigned int baud,
      struct omap8250_priv *priv)
{
 unsigned int uartclk = port->uartclk;
 unsigned int div_13, div_16;
 unsigned int abs_d13, abs_d16;




 if (baud == 38400 && (port->flags & UPF_SPD_MASK) == UPF_SPD_CUST) {
  priv->quot = port->custom_divisor & UART_DIV_MAX;





  if (port->custom_divisor & (1 << 16))
   priv->mdr1 = UART_OMAP_MDR1_13X_MODE;
  else
   priv->mdr1 = UART_OMAP_MDR1_16X_MODE;
  return;
 }
 div_13 = DIV_ROUND_CLOSEST(uartclk, 13 * baud);
 div_16 = DIV_ROUND_CLOSEST(uartclk, 16 * baud);

 if (!div_13)
  div_13 = 1;
 if (!div_16)
  div_16 = 1;

 abs_d13 = abs(baud - uartclk / 13 / div_13);
 abs_d16 = abs(baud - uartclk / 16 / div_16);

 if (abs_d13 >= abs_d16) {
  priv->mdr1 = UART_OMAP_MDR1_16X_MODE;
  priv->quot = div_16;
 } else {
  priv->mdr1 = UART_OMAP_MDR1_13X_MODE;
  priv->quot = div_13;
 }
}
