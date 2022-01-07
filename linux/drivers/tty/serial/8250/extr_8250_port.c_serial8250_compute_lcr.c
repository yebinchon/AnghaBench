
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tcflag_t ;
struct uart_8250_port {int bugs; int fifo_bug; } ;


 int CMSPAR ;




 int CSIZE ;
 int CSTOPB ;
 int PARENB ;
 int PARODD ;
 int UART_BUG_PARITY ;
 unsigned char UART_LCR_EPAR ;
 unsigned char UART_LCR_PARITY ;
 unsigned char UART_LCR_SPAR ;
 unsigned char UART_LCR_STOP ;
 unsigned char UART_LCR_WLEN5 ;
 unsigned char UART_LCR_WLEN6 ;
 unsigned char UART_LCR_WLEN7 ;
 unsigned char UART_LCR_WLEN8 ;

__attribute__((used)) static unsigned char serial8250_compute_lcr(struct uart_8250_port *up,
         tcflag_t c_cflag)
{
 unsigned char cval;

 switch (c_cflag & CSIZE) {
 case 131:
  cval = UART_LCR_WLEN5;
  break;
 case 130:
  cval = UART_LCR_WLEN6;
  break;
 case 129:
  cval = UART_LCR_WLEN7;
  break;
 default:
 case 128:
  cval = UART_LCR_WLEN8;
  break;
 }

 if (c_cflag & CSTOPB)
  cval |= UART_LCR_STOP;
 if (c_cflag & PARENB) {
  cval |= UART_LCR_PARITY;
  if (up->bugs & UART_BUG_PARITY)
   up->fifo_bug = 1;
 }
 if (!(c_cflag & PARODD))
  cval |= UART_LCR_EPAR;





 return cval;
}
