
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct uart_port {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct imx_port {TYPE_1__ port; } ;


 int UCR1 ;
 int UCR1_SNDBRK ;
 int imx_uart_readl (struct imx_port*,int ) ;
 int imx_uart_writel (struct imx_port*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void imx_uart_break_ctl(struct uart_port *port, int break_state)
{
 struct imx_port *sport = (struct imx_port *)port;
 unsigned long flags;
 u32 ucr1;

 spin_lock_irqsave(&sport->port.lock, flags);

 ucr1 = imx_uart_readl(sport, UCR1) & ~UCR1_SNDBRK;

 if (break_state != 0)
  ucr1 |= UCR1_SNDBRK;

 imx_uart_writel(sport, ucr1, UCR1);

 spin_unlock_irqrestore(&sport->port.lock, flags);
}
