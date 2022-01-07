
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int uartclk; } ;


 int UART_DREG ;
 int UART_MNDREG ;
 int UART_MREG ;
 int UART_NREG ;
 int msm_write (struct uart_port*,int,int ) ;

__attribute__((used)) static void msm_serial_set_mnd_regs_tcxoby4(struct uart_port *port)
{
 msm_write(port, 0x18, UART_MREG);
 msm_write(port, 0xF6, UART_NREG);
 msm_write(port, 0x0F, UART_DREG);
 msm_write(port, 0x0A, UART_MNDREG);
 port->uartclk = 1843200;
}
