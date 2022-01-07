
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spi_master {TYPE_1__* cur_msg; int dev; } ;
struct ep93xx_spi {scalar_t__ mmio; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int status; } ;


 int EIO ;
 int IRQ_HANDLED ;
 scalar_t__ SSPCR1 ;
 int SSPCR1_RIE ;
 int SSPCR1_RORIE ;
 int SSPCR1_TIE ;
 scalar_t__ SSPICR ;
 scalar_t__ SSPIIR ;
 int SSPIIR_RORIS ;
 int dev_warn (int *,char*) ;
 scalar_t__ ep93xx_spi_read_write (struct spi_master*) ;
 int readl (scalar_t__) ;
 int spi_finalize_current_transfer (struct spi_master*) ;
 struct ep93xx_spi* spi_master_get_devdata (struct spi_master*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t ep93xx_spi_interrupt(int irq, void *dev_id)
{
 struct spi_master *master = dev_id;
 struct ep93xx_spi *espi = spi_master_get_devdata(master);
 u32 val;





 if (readl(espi->mmio + SSPIIR) & SSPIIR_RORIS) {

  writel(0, espi->mmio + SSPICR);
  dev_warn(&master->dev,
    "receive overrun, aborting the message\n");
  master->cur_msg->status = -EIO;
 } else {




  if (ep93xx_spi_read_write(master)) {





   return IRQ_HANDLED;
  }
 }






 val = readl(espi->mmio + SSPCR1);
 val &= ~(SSPCR1_RORIE | SSPCR1_TIE | SSPCR1_RIE);
 writel(val, espi->mmio + SSPCR1);

 spi_finalize_current_transfer(master);

 return IRQ_HANDLED;
}
