
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uart_port {int dummy; } ;


 int UARTn_CTRL ;
 int UARTn_CTRL_RX_GRP ;
 int mps2_uart_read8 (struct uart_port*,int ) ;
 int mps2_uart_write8 (struct uart_port*,int ,int ) ;

__attribute__((used)) static void mps2_uart_stop_rx(struct uart_port *port)
{
 u8 control = mps2_uart_read8(port, UARTn_CTRL);

 control &= ~UARTn_CTRL_RX_GRP;

 mps2_uart_write8(port, control, UARTn_CTRL);
}
