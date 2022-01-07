
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pic32_sqi {scalar_t__ regs; int xfer_done; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PESQI_BDDONE ;
 int PESQI_DMAERR ;
 scalar_t__ PESQI_INT_ENABLE_REG ;
 scalar_t__ PESQI_INT_STAT_REG ;
 int PESQI_PKTCOMP ;
 int PESQI_RXEMPTY ;
 int PESQI_RXFULL ;
 int PESQI_RXTHR ;
 int PESQI_TXEMPTY ;
 int PESQI_TXFULL ;
 int PESQI_TXTHR ;
 int complete (int *) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t pic32_sqi_isr(int irq, void *dev_id)
{
 struct pic32_sqi *sqi = dev_id;
 u32 enable, status;

 enable = readl(sqi->regs + PESQI_INT_ENABLE_REG);
 status = readl(sqi->regs + PESQI_INT_STAT_REG);


 if (!status)
  return IRQ_NONE;

 if (status & PESQI_DMAERR) {
  enable = 0;
  goto irq_done;
 }

 if (status & PESQI_TXTHR)
  enable &= ~(PESQI_TXTHR | PESQI_TXFULL | PESQI_TXEMPTY);

 if (status & PESQI_RXTHR)
  enable &= ~(PESQI_RXTHR | PESQI_RXFULL | PESQI_RXEMPTY);

 if (status & PESQI_BDDONE)
  enable &= ~PESQI_BDDONE;


 if (status & PESQI_PKTCOMP) {

  enable = 0;

  complete(&sqi->xfer_done);
 }

irq_done:

 writel(enable, sqi->regs + PESQI_INT_ENABLE_REG);

 return IRQ_HANDLED;
}
