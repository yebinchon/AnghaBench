
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spi_transfer {scalar_t__ len; int rx_buf; int tx_buf; } ;
struct spi_device {int master; } ;
struct au1550_spi {scalar_t__ len; scalar_t__ tx_count; scalar_t__ rx_count; int master_done; TYPE_1__* regs; int (* tx_word ) (struct au1550_spi*) ;int rx; int tx; } ;
struct TYPE_2__ {int psc_spistat; int psc_spimsk; int psc_spipcr; } ;


 int PSC_SPIMSK_SD ;
 int PSC_SPIMSK_TR ;
 int PSC_SPIPCR_MS ;
 int PSC_SPISTAT_TF ;
 struct au1550_spi* spi_master_get_devdata (int ) ;
 int stub1 (struct au1550_spi*) ;
 int wait_for_completion (int *) ;
 int wmb () ;

__attribute__((used)) static int au1550_spi_pio_txrxb(struct spi_device *spi, struct spi_transfer *t)
{
 u32 stat, mask;
 struct au1550_spi *hw = spi_master_get_devdata(spi->master);

 hw->tx = t->tx_buf;
 hw->rx = t->rx_buf;
 hw->len = t->len;
 hw->tx_count = 0;
 hw->rx_count = 0;


 mask = PSC_SPIMSK_SD;


 while (hw->tx_count < hw->len) {

  hw->tx_word(hw);

  if (hw->tx_count >= hw->len) {

   mask |= PSC_SPIMSK_TR;
  }

  stat = hw->regs->psc_spistat;
  wmb();
  if (stat & PSC_SPISTAT_TF)
   break;
 }


 hw->regs->psc_spimsk = mask;
 wmb();


 hw->regs->psc_spipcr = PSC_SPIPCR_MS;
 wmb();

 wait_for_completion(&hw->master_done);

 return hw->rx_count < hw->tx_count ? hw->rx_count : hw->tx_count;
}
