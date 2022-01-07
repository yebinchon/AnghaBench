
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {unsigned int uartclk; } ;



__attribute__((used)) static inline int calculate_baud_abs_diff(struct uart_port *port,
    unsigned int baud, unsigned int mode)
{
 unsigned int n = port->uartclk / (mode * baud);
 int abs_diff;

 if (n == 0)
  n = 1;

 abs_diff = baud - (port->uartclk / (mode * n));
 if (abs_diff < 0)
  abs_diff = -abs_diff;

 return abs_diff;
}
