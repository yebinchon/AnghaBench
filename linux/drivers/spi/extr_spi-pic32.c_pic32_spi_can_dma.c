
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {scalar_t__ len; } ;
struct spi_master {int dummy; } ;
struct spi_device {int dummy; } ;
struct pic32_spi {int flags; } ;


 int PIC32F_DMA_PREP ;
 scalar_t__ PIC32_DMA_LEN_MIN ;
 struct pic32_spi* spi_master_get_devdata (struct spi_master*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool pic32_spi_can_dma(struct spi_master *master,
         struct spi_device *spi,
         struct spi_transfer *xfer)
{
 struct pic32_spi *pic32s = spi_master_get_devdata(master);


 return (xfer->len >= PIC32_DMA_LEN_MIN) &&
        test_bit(PIC32F_DMA_PREP, &pic32s->flags);
}
