
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int bits_per_word; } ;
struct spi_device {int dummy; } ;
struct spi_controller {int dma_rx; } ;


 unsigned int fsl_lpspi_bytes_per_word (int ) ;

__attribute__((used)) static bool fsl_lpspi_can_dma(struct spi_controller *controller,
         struct spi_device *spi,
         struct spi_transfer *transfer)
{
 unsigned int bytes_per_word;

 if (!controller->dma_rx)
  return 0;

 bytes_per_word = fsl_lpspi_bytes_per_word(transfer->bits_per_word);

 switch (bytes_per_word)
 {
  case 1:
  case 2:
  case 4:
   break;
  default:
   return 0;
 }

 return 1;
}
