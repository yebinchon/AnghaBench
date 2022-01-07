
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct imx_port {int context_saved; int* saved_reg; TYPE_1__ port; } ;


 int IMX21_UTS ;
 int UBIR ;
 int UBMR ;
 int UCR1 ;
 int UCR2 ;
 int UCR2_SRST ;
 int UCR3 ;
 int UCR4 ;
 int UESC ;
 int UFCR ;
 int UTIM ;
 int imx_uart_writel (struct imx_port*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void imx_uart_restore_context(struct imx_port *sport)
{
 unsigned long flags;

 spin_lock_irqsave(&sport->port.lock, flags);
 if (!sport->context_saved) {
  spin_unlock_irqrestore(&sport->port.lock, flags);
  return;
 }

 imx_uart_writel(sport, sport->saved_reg[4], UFCR);
 imx_uart_writel(sport, sport->saved_reg[5], UESC);
 imx_uart_writel(sport, sport->saved_reg[6], UTIM);
 imx_uart_writel(sport, sport->saved_reg[7], UBIR);
 imx_uart_writel(sport, sport->saved_reg[8], UBMR);
 imx_uart_writel(sport, sport->saved_reg[9], IMX21_UTS);
 imx_uart_writel(sport, sport->saved_reg[0], UCR1);
 imx_uart_writel(sport, sport->saved_reg[1] | UCR2_SRST, UCR2);
 imx_uart_writel(sport, sport->saved_reg[2], UCR3);
 imx_uart_writel(sport, sport->saved_reg[3], UCR4);
 sport->context_saved = 0;
 spin_unlock_irqrestore(&sport->port.lock, flags);
}
