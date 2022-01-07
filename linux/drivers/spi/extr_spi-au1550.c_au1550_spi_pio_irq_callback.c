
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct au1550_spi {scalar_t__ rx_count; scalar_t__ len; scalar_t__ tx_count; int master_done; TYPE_1__* regs; int (* tx_word ) (struct au1550_spi*) ;int (* rx_word ) (struct au1550_spi*) ;int dev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int psc_spistat; int psc_spievent; int psc_spipcr; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PSC_SPIEVNT_MD ;
 int PSC_SPIEVNT_MM ;
 int PSC_SPIEVNT_RO ;
 int PSC_SPIEVNT_RR ;
 int PSC_SPIEVNT_RU ;
 int PSC_SPIEVNT_SD ;
 int PSC_SPIEVNT_TO ;
 int PSC_SPIEVNT_TR ;
 int PSC_SPIEVNT_TU ;
 int PSC_SPIPCR_MS ;
 int PSC_SPISTAT_DI ;
 int PSC_SPISTAT_RE ;
 int PSC_SPISTAT_TF ;
 int au1550_spi_mask_ack_all (struct au1550_spi*) ;
 int au1550_spi_reset_fifos (struct au1550_spi*) ;
 int complete (int *) ;
 int dev_err (int ,char*,...) ;
 int stub1 (struct au1550_spi*) ;
 int stub2 (struct au1550_spi*) ;
 int wmb () ;

__attribute__((used)) static irqreturn_t au1550_spi_pio_irq_callback(struct au1550_spi *hw)
{
 int busy;
 u32 stat, evnt;

 stat = hw->regs->psc_spistat;
 evnt = hw->regs->psc_spievent;
 wmb();
 if ((stat & PSC_SPISTAT_DI) == 0) {
  dev_err(hw->dev, "Unexpected IRQ!\n");
  return IRQ_NONE;
 }

 if ((evnt & (PSC_SPIEVNT_MM | PSC_SPIEVNT_RO
    | PSC_SPIEVNT_RU | PSC_SPIEVNT_TO
    | PSC_SPIEVNT_SD))
   != 0) {




  au1550_spi_mask_ack_all(hw);
  au1550_spi_reset_fifos(hw);
  dev_err(hw->dev,
   "pio transfer: unexpected SPI error "
   "(event=0x%x stat=0x%x)!\n", evnt, stat);
  complete(&hw->master_done);
  return IRQ_HANDLED;
 }





 do {
  busy = 0;
  stat = hw->regs->psc_spistat;
  wmb();
  if (!(stat & PSC_SPISTAT_RE) && hw->rx_count < hw->len) {
   hw->rx_word(hw);
   busy = 1;

   if (!(stat & PSC_SPISTAT_TF) && hw->tx_count < hw->len)
    hw->tx_word(hw);
  }
 } while (busy);

 hw->regs->psc_spievent = PSC_SPIEVNT_RR | PSC_SPIEVNT_TR;
 wmb();
 if (evnt & PSC_SPIEVNT_TU) {
  hw->regs->psc_spievent = PSC_SPIEVNT_TU | PSC_SPIEVNT_MD;
  wmb();
  hw->regs->psc_spipcr = PSC_SPIPCR_MS;
  wmb();
 }

 if (hw->rx_count >= hw->len) {

  au1550_spi_mask_ack_all(hw);
  complete(&hw->master_done);
 }
 return IRQ_HANDLED;
}
