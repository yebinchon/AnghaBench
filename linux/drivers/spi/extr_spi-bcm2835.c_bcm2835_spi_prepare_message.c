
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {struct spi_device* spi; } ;
struct spi_device {size_t chip_select; } ;
struct spi_controller {scalar_t__ can_dma; } ;
struct bcm2835_spi {int * prepare_cs; } ;


 int BCM2835_SPI_CS ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int bcm2835_wr (struct bcm2835_spi*,int ,int ) ;
 struct bcm2835_spi* spi_controller_get_devdata (struct spi_controller*) ;
 int spi_split_transfers_maxsize (struct spi_controller*,struct spi_message*,int,int) ;

__attribute__((used)) static int bcm2835_spi_prepare_message(struct spi_controller *ctlr,
           struct spi_message *msg)
{
 struct spi_device *spi = msg->spi;
 struct bcm2835_spi *bs = spi_controller_get_devdata(ctlr);
 int ret;

 if (ctlr->can_dma) {





  ret = spi_split_transfers_maxsize(ctlr, msg, 65532,
        GFP_KERNEL | GFP_DMA);
  if (ret)
   return ret;
 }





 bcm2835_wr(bs, BCM2835_SPI_CS, bs->prepare_cs[spi->chip_select]);

 return 0;
}
