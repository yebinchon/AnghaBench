
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int dev; } ;
struct uart_8250_port {int fcr; TYPE_1__ port; } ;
struct omap8250_priv {scalar_t__ mdr1; } ;


 int UART_FCR ;
 int UART_FCR_CLEAR_RCVR ;
 int UART_FCR_CLEAR_XMIT ;
 int UART_LSR ;
 scalar_t__ UART_LSR_DR ;
 scalar_t__ UART_LSR_THRE ;
 int UART_OMAP_MDR1 ;
 int dev_crit (int ,char*,scalar_t__) ;
 scalar_t__ serial_in (struct uart_8250_port*,int ) ;
 int serial_out (struct uart_8250_port*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void omap_8250_mdr1_errataset(struct uart_8250_port *up,
         struct omap8250_priv *priv)
{
 u8 timeout = 255;
 u8 old_mdr1;

 old_mdr1 = serial_in(up, UART_OMAP_MDR1);
 if (old_mdr1 == priv->mdr1)
  return;

 serial_out(up, UART_OMAP_MDR1, priv->mdr1);
 udelay(2);
 serial_out(up, UART_FCR, up->fcr | UART_FCR_CLEAR_XMIT |
   UART_FCR_CLEAR_RCVR);




 while (UART_LSR_THRE != (serial_in(up, UART_LSR) &
    (UART_LSR_THRE | UART_LSR_DR))) {
  timeout--;
  if (!timeout) {

   dev_crit(up->port.dev, "Errata i202: timedout %x\n",
     serial_in(up, UART_LSR));
   break;
  }
  udelay(1);
 }
}
