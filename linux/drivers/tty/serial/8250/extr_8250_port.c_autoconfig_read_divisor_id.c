
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_8250_port {int dummy; } ;


 int UART_LCR ;
 unsigned char UART_LCR_CONF_MODE_A ;
 unsigned int serial_dl_read (struct uart_8250_port*) ;
 int serial_dl_write (struct uart_8250_port*,unsigned int) ;
 unsigned char serial_in (struct uart_8250_port*,int ) ;
 int serial_out (struct uart_8250_port*,int ,unsigned char) ;

__attribute__((used)) static unsigned int autoconfig_read_divisor_id(struct uart_8250_port *p)
{
 unsigned char old_lcr;
 unsigned int id, old_dl;

 old_lcr = serial_in(p, UART_LCR);
 serial_out(p, UART_LCR, UART_LCR_CONF_MODE_A);
 old_dl = serial_dl_read(p);
 serial_dl_write(p, 0);
 id = serial_dl_read(p);
 serial_dl_write(p, old_dl);

 serial_out(p, UART_LCR, old_lcr);

 return id;
}
