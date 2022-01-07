
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct spi_imx_data {int remainder; scalar_t__ rx_buf; int bits_per_word; scalar_t__ base; } ;


 scalar_t__ MXC_CSPIRXDATA ;
 unsigned int cpu_to_be32 (unsigned int) ;
 unsigned int readl (scalar_t__) ;
 unsigned int spi_imx_bytes_per_word (int ) ;

__attribute__((used)) static void spi_imx_buf_rx_swap_u32(struct spi_imx_data *spi_imx)
{
 unsigned int val = readl(spi_imx->base + MXC_CSPIRXDATA);




 if (spi_imx->rx_buf) {







  *(u32 *)spi_imx->rx_buf = val;
  spi_imx->rx_buf += sizeof(u32);
 }

 spi_imx->remainder -= sizeof(u32);
}
