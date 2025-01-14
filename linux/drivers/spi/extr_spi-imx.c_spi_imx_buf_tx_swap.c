
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct spi_imx_data {int count; scalar_t__ base; scalar_t__ tx_buf; int bits_per_word; } ;


 scalar_t__ MXC_CSPITXDATA ;
 int spi_imx_buf_tx_swap_u32 (struct spi_imx_data*) ;
 int spi_imx_buf_tx_u16 (struct spi_imx_data*) ;
 int spi_imx_bytes_per_word (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void spi_imx_buf_tx_swap(struct spi_imx_data *spi_imx)
{
 int unaligned;
 u32 val = 0;

 unaligned = spi_imx->count % 4;

 if (!unaligned) {
  spi_imx_buf_tx_swap_u32(spi_imx);
  return;
 }

 if (spi_imx_bytes_per_word(spi_imx->bits_per_word) == 2) {
  spi_imx_buf_tx_u16(spi_imx);
  return;
 }

 while (unaligned--) {
  if (spi_imx->tx_buf) {
   val |= *(u8 *)spi_imx->tx_buf << (8 * unaligned);
   spi_imx->tx_buf++;
  }
  spi_imx->count--;
 }

 writel(val, spi_imx->base + MXC_CSPITXDATA);
}
