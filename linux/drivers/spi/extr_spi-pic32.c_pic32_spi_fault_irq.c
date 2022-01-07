
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pic32_spi {TYPE_1__* master; TYPE_2__* regs; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int status_clr; int status; } ;
struct TYPE_3__ {int cur_msg; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int STAT_FRM_ERR ;
 int STAT_RX_OV ;
 int STAT_TX_UR ;
 int pic32_err_stop (struct pic32_spi*,char*) ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static irqreturn_t pic32_spi_fault_irq(int irq, void *dev_id)
{
 struct pic32_spi *pic32s = dev_id;
 u32 status;

 status = readl(&pic32s->regs->status);


 if (status & (STAT_RX_OV | STAT_TX_UR)) {
  writel(STAT_RX_OV, &pic32s->regs->status_clr);
  writel(STAT_TX_UR, &pic32s->regs->status_clr);
  pic32_err_stop(pic32s, "err_irq: fifo ov/ur-run\n");
  return IRQ_HANDLED;
 }

 if (status & STAT_FRM_ERR) {
  pic32_err_stop(pic32s, "err_irq: frame error");
  return IRQ_HANDLED;
 }

 if (!pic32s->master->cur_msg) {
  pic32_err_stop(pic32s, "err_irq: no mesg");
  return IRQ_NONE;
 }

 return IRQ_NONE;
}
