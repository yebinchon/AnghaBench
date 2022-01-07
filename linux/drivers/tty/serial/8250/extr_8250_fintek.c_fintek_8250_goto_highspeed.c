
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uartclk; } ;
struct uart_8250_port {TYPE_1__ port; } ;
struct fintek_8250 {int pid; int index; } ;



 int F81866_UART_CLK ;
 int F81866_UART_CLK_14_769MHZ ;
 int F81866_UART_CLK_MASK ;
 int LDN ;
 int sio_write_mask_reg (struct fintek_8250*,int ,int ,int ) ;
 int sio_write_reg (struct fintek_8250*,int ,int ) ;

__attribute__((used)) static void fintek_8250_goto_highspeed(struct uart_8250_port *uart,
         struct fintek_8250 *pdata)
{
 sio_write_reg(pdata, LDN, pdata->index);

 switch (pdata->pid) {
 case 128:
  sio_write_mask_reg(pdata, F81866_UART_CLK,
   F81866_UART_CLK_MASK,
   F81866_UART_CLK_14_769MHZ);

  uart->port.uartclk = 921600 * 16;
  break;
 default:
  break;
 }
}
