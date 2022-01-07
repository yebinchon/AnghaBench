
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {int dummy; } ;
struct omap8250_priv {int habit; int mdr1; } ;


 int UART_ERRATA_i202_MDR1_ACCESS ;
 int UART_OMAP_MDR1 ;
 int omap_8250_mdr1_errataset (struct uart_8250_port*,struct omap8250_priv*) ;
 int serial_out (struct uart_8250_port*,int ,int ) ;

__attribute__((used)) static void omap8250_update_mdr1(struct uart_8250_port *up,
     struct omap8250_priv *priv)
{
 if (priv->habit & UART_ERRATA_i202_MDR1_ACCESS)
  omap_8250_mdr1_errataset(up, priv);
 else
  serial_out(up, UART_OMAP_MDR1, priv->mdr1);
}
