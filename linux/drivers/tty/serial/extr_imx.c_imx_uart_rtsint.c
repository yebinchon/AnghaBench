
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int lock; TYPE_2__* state; } ;
struct imx_port {TYPE_3__ port; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int delta_msr_wait; } ;
struct TYPE_5__ {TYPE_1__ port; } ;


 int IRQ_HANDLED ;
 int USR1 ;
 int USR1_RTSD ;
 int USR1_RTSS ;
 int imx_uart_readl (struct imx_port*,int ) ;
 int imx_uart_writel (struct imx_port*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int uart_handle_cts_change (TYPE_3__*,int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t imx_uart_rtsint(int irq, void *dev_id)
{
 struct imx_port *sport = dev_id;
 u32 usr1;

 spin_lock(&sport->port.lock);

 imx_uart_writel(sport, USR1_RTSD, USR1);
 usr1 = imx_uart_readl(sport, USR1) & USR1_RTSS;
 uart_handle_cts_change(&sport->port, !!usr1);
 wake_up_interruptible(&sport->port.state->port.delta_msr_wait);

 spin_unlock(&sport->port.lock);
 return IRQ_HANDLED;
}
