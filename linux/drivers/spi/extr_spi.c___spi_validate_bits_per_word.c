
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_controller {int bits_per_word_mask; } ;


 int EINVAL ;
 int SPI_BPW_MASK (int) ;

__attribute__((used)) static int __spi_validate_bits_per_word(struct spi_controller *ctlr,
     u8 bits_per_word)
{
 if (ctlr->bits_per_word_mask) {

  if (bits_per_word > 32)
   return -EINVAL;
  if (!(ctlr->bits_per_word_mask & SPI_BPW_MASK(bits_per_word)))
   return -EINVAL;
 }

 return 0;
}
