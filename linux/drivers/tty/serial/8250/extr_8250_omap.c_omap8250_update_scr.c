
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uart_8250_port {int dummy; } ;
struct omap8250_priv {int scr; } ;


 int OMAP_UART_SCR_DMAMODE_MASK ;
 int UART_OMAP_SCR ;
 int serial_in (struct uart_8250_port*,int ) ;
 int serial_out (struct uart_8250_port*,int ,int) ;

__attribute__((used)) static void omap8250_update_scr(struct uart_8250_port *up,
    struct omap8250_priv *priv)
{
 u8 old_scr;

 old_scr = serial_in(up, UART_OMAP_SCR);
 if (old_scr == priv->scr)
  return;






 if (priv->scr & OMAP_UART_SCR_DMAMODE_MASK)
  serial_out(up, UART_OMAP_SCR,
      priv->scr & ~OMAP_UART_SCR_DMAMODE_MASK);
 serial_out(up, UART_OMAP_SCR, priv->scr);
}
