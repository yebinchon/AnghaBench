
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_imx_data {int count; scalar_t__ base; int bits_per_word; scalar_t__ tx_buf; } ;


 scalar_t__ MXC_CSPITXDATA ;
 int cpu_to_be32 (int) ;
 unsigned int spi_imx_bytes_per_word (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void spi_imx_buf_tx_swap_u32(struct spi_imx_data *spi_imx)
{
 u32 val = 0;




 if (spi_imx->tx_buf) {
  val = *(u32 *)spi_imx->tx_buf;
  spi_imx->tx_buf += sizeof(u32);
 }

 spi_imx->count -= sizeof(u32);
 writel(val, spi_imx->base + MXC_CSPITXDATA);
}
