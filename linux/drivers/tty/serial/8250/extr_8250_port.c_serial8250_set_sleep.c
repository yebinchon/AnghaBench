
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {int capabilities; } ;


 int UART_CAP_EFR ;
 int UART_CAP_SLEEP ;
 int UART_EFR ;
 unsigned char UART_EFR_ECB ;
 int UART_IER ;
 unsigned char UART_IERX_SLEEP ;
 int UART_LCR ;
 unsigned char UART_LCR_CONF_MODE_B ;
 int serial8250_rpm_get (struct uart_8250_port*) ;
 int serial8250_rpm_put (struct uart_8250_port*) ;
 unsigned char serial_in (struct uart_8250_port*,int ) ;
 int serial_out (struct uart_8250_port*,int ,unsigned char) ;

__attribute__((used)) static void serial8250_set_sleep(struct uart_8250_port *p, int sleep)
{
 unsigned char lcr = 0, efr = 0;

 serial8250_rpm_get(p);

 if (p->capabilities & UART_CAP_SLEEP) {
  if (p->capabilities & UART_CAP_EFR) {
   lcr = serial_in(p, UART_LCR);
   efr = serial_in(p, UART_EFR);
   serial_out(p, UART_LCR, UART_LCR_CONF_MODE_B);
   serial_out(p, UART_EFR, UART_EFR_ECB);
   serial_out(p, UART_LCR, 0);
  }
  serial_out(p, UART_IER, sleep ? UART_IERX_SLEEP : 0);
  if (p->capabilities & UART_CAP_EFR) {
   serial_out(p, UART_LCR, UART_LCR_CONF_MODE_B);
   serial_out(p, UART_EFR, efr);
   serial_out(p, UART_LCR, lcr);
  }
 }

 serial8250_rpm_put(p);
}
