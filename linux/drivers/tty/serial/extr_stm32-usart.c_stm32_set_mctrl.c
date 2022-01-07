
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int status; } ;
struct stm32_usart_offsets {int cr3; } ;
struct stm32_port {TYPE_1__* info; } ;
struct TYPE_2__ {struct stm32_usart_offsets ofs; } ;


 unsigned int TIOCM_RTS ;
 int UPSTAT_AUTORTS ;
 int USART_CR3_RTSE ;
 int stm32_clr_bits (struct uart_port*,int ,int ) ;
 int stm32_set_bits (struct uart_port*,int ,int ) ;
 struct stm32_port* to_stm32_port (struct uart_port*) ;

__attribute__((used)) static void stm32_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 struct stm32_port *stm32_port = to_stm32_port(port);
 struct stm32_usart_offsets *ofs = &stm32_port->info->ofs;

 if ((mctrl & TIOCM_RTS) && (port->status & UPSTAT_AUTORTS))
  stm32_set_bits(port, ofs->cr3, USART_CR3_RTSE);
 else
  stm32_clr_bits(port, ofs->cr3, USART_CR3_RTSE);
}
