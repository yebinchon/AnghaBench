
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static void fsl_spi_grlib_set_shifts(u32 *rx_shift, u32 *tx_shift,
         int bits_per_word, int msb_first)
{
 *rx_shift = 0;
 *tx_shift = 0;
 if (bits_per_word <= 16) {
  if (msb_first) {
   *rx_shift = 16;
   *tx_shift = 32 - bits_per_word;
  } else {
   *rx_shift = 16 - bits_per_word;
  }
 }
}
