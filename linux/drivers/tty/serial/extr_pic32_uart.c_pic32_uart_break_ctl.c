
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;
struct pic32_sport {int dummy; } ;


 int PIC32_CLR (int ) ;
 int PIC32_SET (int ) ;
 int PIC32_UART_STA ;
 int PIC32_UART_STA_UTXBRK ;
 int pic32_uart_writel (struct pic32_sport*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct pic32_sport* to_pic32_sport (struct uart_port*) ;

__attribute__((used)) static void pic32_uart_break_ctl(struct uart_port *port, int ctl)
{
 struct pic32_sport *sport = to_pic32_sport(port);
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);

 if (ctl)
  pic32_uart_writel(sport, PIC32_SET(PIC32_UART_STA),
     PIC32_UART_STA_UTXBRK);
 else
  pic32_uart_writel(sport, PIC32_CLR(PIC32_UART_STA),
     PIC32_UART_STA_UTXBRK);

 spin_unlock_irqrestore(&port->lock, flags);
}
