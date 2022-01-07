
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq; } ;
struct altera_uart {unsigned short imr; TYPE_1__ port; } ;


 int ALTERA_UART_CONTROL_REG ;
 unsigned short ALTERA_UART_CONTROL_RTS_MSK ;
 unsigned short ALTERA_UART_CONTROL_TRBK_MSK ;
 int altera_uart_writel (TYPE_1__*,unsigned short,int ) ;

__attribute__((used)) static void altera_uart_update_ctrl_reg(struct altera_uart *pp)
{
 unsigned short imr = pp->imr;





 if (!pp->port.irq)
  imr &= ALTERA_UART_CONTROL_TRBK_MSK | ALTERA_UART_CONTROL_RTS_MSK;

 altera_uart_writel(&pp->port, imr, ALTERA_UART_CONTROL_REG);
}
