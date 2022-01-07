
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int lock; } ;
struct stm32_usart_offsets {int cr3; int cr1; } ;
struct stm32_port {scalar_t__ cr3_irq; scalar_t__ cr1_irq; TYPE_1__* info; } ;
struct TYPE_2__ {struct stm32_usart_offsets ofs; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stm32_clr_bits (struct uart_port*,int ,scalar_t__) ;
 struct stm32_port* to_stm32_port (struct uart_port*) ;

__attribute__((used)) static void stm32_throttle(struct uart_port *port)
{
 struct stm32_port *stm32_port = to_stm32_port(port);
 struct stm32_usart_offsets *ofs = &stm32_port->info->ofs;
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);
 stm32_clr_bits(port, ofs->cr1, stm32_port->cr1_irq);
 if (stm32_port->cr3_irq)
  stm32_clr_bits(port, ofs->cr3, stm32_port->cr3_irq);

 spin_unlock_irqrestore(&port->lock, flags);
}
