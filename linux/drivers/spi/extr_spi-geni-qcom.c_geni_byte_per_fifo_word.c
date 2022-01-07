
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_geni_master {int fifo_width_bits; int cur_bits_per_word; } ;


 unsigned int BITS_PER_BYTE ;
 int DIV_ROUND_UP (int,unsigned int) ;
 unsigned int roundup_pow_of_two (int ) ;

__attribute__((used)) static unsigned int geni_byte_per_fifo_word(struct spi_geni_master *mas)
{





 if (mas->fifo_width_bits % mas->cur_bits_per_word)
  return roundup_pow_of_two(DIV_ROUND_UP(mas->cur_bits_per_word,
             BITS_PER_BYTE));

 return mas->fifo_width_bits / BITS_PER_BYTE;
}
