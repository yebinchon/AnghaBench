
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int uartclk; } ;


 unsigned int MAX310X_BRGCFG_2XMODE_BIT ;
 unsigned int MAX310X_BRGCFG_4XMODE_BIT ;
 int MAX310X_BRGCFG_REG ;
 int MAX310X_BRGDIVLSB_REG ;
 int MAX310X_BRGDIVMSB_REG ;
 int max310x_port_write (struct uart_port*,int ,unsigned int) ;

__attribute__((used)) static int max310x_set_baud(struct uart_port *port, int baud)
{
 unsigned int mode = 0, div = 0, frac = 0, c = 0, F = 0;






 div = port->uartclk / baud;
 if (div < 8) {

  c = 4;
  mode = MAX310X_BRGCFG_4XMODE_BIT;
 } else if (div < 16) {

  c = 8;
  mode = MAX310X_BRGCFG_2XMODE_BIT;
 } else {
  c = 16;
 }


 div /= c;
 F = c*baud;


 if (div > 0)
  frac = (16*(port->uartclk % F)) / F;
 else
  div = 1;

 max310x_port_write(port, MAX310X_BRGDIVMSB_REG, div >> 8);
 max310x_port_write(port, MAX310X_BRGDIVLSB_REG, div);
 max310x_port_write(port, MAX310X_BRGCFG_REG, frac | mode);


 return (16*port->uartclk) / (c*(16*div + frac));
}
