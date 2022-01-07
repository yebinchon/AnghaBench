
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int overrun; } ;
struct TYPE_4__ {TYPE_1__ icount; int lock; } ;
struct imx_port {TYPE_2__ port; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int UCR1 ;
 unsigned int UCR1_RRDYEN ;
 unsigned int UCR1_RTSDEN ;
 unsigned int UCR1_TRDYEN ;
 int UCR2 ;
 unsigned int UCR2_ATEN ;
 int UCR3 ;
 unsigned int UCR3_AWAKEN ;
 unsigned int UCR3_DTRDEN ;
 int UCR4 ;
 unsigned int UCR4_OREN ;
 unsigned int UCR4_TCEN ;
 int USR1 ;
 unsigned int USR1_AGTIM ;
 unsigned int USR1_AWAKE ;
 unsigned int USR1_DTRD ;
 unsigned int USR1_RRDY ;
 unsigned int USR1_RTSD ;
 unsigned int USR1_TRDY ;
 int USR2 ;
 unsigned int USR2_ORE ;
 unsigned int USR2_TXDC ;
 int imx_uart_mctrl_check (struct imx_port*) ;
 unsigned int imx_uart_readl (struct imx_port*,int ) ;
 int imx_uart_rtsint (int,void*) ;
 int imx_uart_rxint (int,void*) ;
 int imx_uart_txint (int,void*) ;
 int imx_uart_writel (struct imx_port*,unsigned int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t imx_uart_int(int irq, void *dev_id)
{
 struct imx_port *sport = dev_id;
 unsigned int usr1, usr2, ucr1, ucr2, ucr3, ucr4;
 irqreturn_t ret = IRQ_NONE;

 usr1 = imx_uart_readl(sport, USR1);
 usr2 = imx_uart_readl(sport, USR2);
 ucr1 = imx_uart_readl(sport, UCR1);
 ucr2 = imx_uart_readl(sport, UCR2);
 ucr3 = imx_uart_readl(sport, UCR3);
 ucr4 = imx_uart_readl(sport, UCR4);
 if ((ucr1 & UCR1_RRDYEN) == 0)
  usr1 &= ~USR1_RRDY;
 if ((ucr2 & UCR2_ATEN) == 0)
  usr1 &= ~USR1_AGTIM;
 if ((ucr1 & UCR1_TRDYEN) == 0)
  usr1 &= ~USR1_TRDY;
 if ((ucr4 & UCR4_TCEN) == 0)
  usr2 &= ~USR2_TXDC;
 if ((ucr3 & UCR3_DTRDEN) == 0)
  usr1 &= ~USR1_DTRD;
 if ((ucr1 & UCR1_RTSDEN) == 0)
  usr1 &= ~USR1_RTSD;
 if ((ucr3 & UCR3_AWAKEN) == 0)
  usr1 &= ~USR1_AWAKE;
 if ((ucr4 & UCR4_OREN) == 0)
  usr2 &= ~USR2_ORE;

 if (usr1 & (USR1_RRDY | USR1_AGTIM)) {
  imx_uart_rxint(irq, dev_id);
  ret = IRQ_HANDLED;
 }

 if ((usr1 & USR1_TRDY) || (usr2 & USR2_TXDC)) {
  imx_uart_txint(irq, dev_id);
  ret = IRQ_HANDLED;
 }

 if (usr1 & USR1_DTRD) {
  imx_uart_writel(sport, USR1_DTRD, USR1);

  spin_lock(&sport->port.lock);
  imx_uart_mctrl_check(sport);
  spin_unlock(&sport->port.lock);

  ret = IRQ_HANDLED;
 }

 if (usr1 & USR1_RTSD) {
  imx_uart_rtsint(irq, dev_id);
  ret = IRQ_HANDLED;
 }

 if (usr1 & USR1_AWAKE) {
  imx_uart_writel(sport, USR1_AWAKE, USR1);
  ret = IRQ_HANDLED;
 }

 if (usr2 & USR2_ORE) {
  sport->port.icount.overrun++;
  imx_uart_writel(sport, USR2_ORE, USR2);
  ret = IRQ_HANDLED;
 }

 return ret;
}
