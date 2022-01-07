
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct imx_port {int context_saved; TYPE_1__ port; void** saved_reg; } ;


 int IMX21_UTS ;
 int UBIR ;
 int UBMR ;
 int UCR1 ;
 int UCR2 ;
 int UCR3 ;
 int UCR4 ;
 int UESC ;
 int UFCR ;
 int UTIM ;
 void* imx_uart_readl (struct imx_port*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void imx_uart_save_context(struct imx_port *sport)
{
 unsigned long flags;


 spin_lock_irqsave(&sport->port.lock, flags);
 sport->saved_reg[0] = imx_uart_readl(sport, UCR1);
 sport->saved_reg[1] = imx_uart_readl(sport, UCR2);
 sport->saved_reg[2] = imx_uart_readl(sport, UCR3);
 sport->saved_reg[3] = imx_uart_readl(sport, UCR4);
 sport->saved_reg[4] = imx_uart_readl(sport, UFCR);
 sport->saved_reg[5] = imx_uart_readl(sport, UESC);
 sport->saved_reg[6] = imx_uart_readl(sport, UTIM);
 sport->saved_reg[7] = imx_uart_readl(sport, UBIR);
 sport->saved_reg[8] = imx_uart_readl(sport, UBMR);
 sport->saved_reg[9] = imx_uart_readl(sport, IMX21_UTS);
 sport->context_saved = 1;
 spin_unlock_irqrestore(&sport->port.lock, flags);
}
