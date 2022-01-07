
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uart_omap_port {int fcr; int dev; } ;


 int UART_FCR ;
 int UART_FCR_CLEAR_RCVR ;
 int UART_FCR_CLEAR_XMIT ;
 int UART_LSR ;
 int UART_LSR_DR ;
 int UART_LSR_THRE ;
 int UART_OMAP_MDR1 ;
 int dev_crit (int ,char*,int) ;
 int serial_in (struct uart_omap_port*,int ) ;
 int serial_out (struct uart_omap_port*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void serial_omap_mdr1_errataset(struct uart_omap_port *up, u8 mdr1)
{
 u8 timeout = 255;

 serial_out(up, UART_OMAP_MDR1, mdr1);
 udelay(2);
 serial_out(up, UART_FCR, up->fcr | UART_FCR_CLEAR_XMIT |
   UART_FCR_CLEAR_RCVR);




 while (UART_LSR_THRE != (serial_in(up, UART_LSR) &
    (UART_LSR_THRE | UART_LSR_DR))) {
  timeout--;
  if (!timeout) {

   dev_crit(up->dev, "Errata i202: timedout %x\n",
      serial_in(up, UART_LSR));
   break;
  }
  udelay(1);
 }
}
