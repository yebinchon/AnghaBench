
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int u8 ;
typedef int u32 ;
struct spi_imx_data {int slave_burst; int remainder; scalar_t__ rx_buf; scalar_t__ base; } ;


 scalar_t__ MXC_CSPIRXDATA ;
 int be32_to_cpu (int ) ;
 int memcpy (scalar_t__,int *,int) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void mx53_ecspi_rx_slave(struct spi_imx_data *spi_imx)
{
 u32 val = be32_to_cpu(readl(spi_imx->base + MXC_CSPIRXDATA));

 if (spi_imx->rx_buf) {
  int n_bytes = spi_imx->slave_burst % sizeof(val);

  if (!n_bytes)
   n_bytes = sizeof(val);

  memcpy(spi_imx->rx_buf,
         ((u8 *)&val) + sizeof(val) - n_bytes, n_bytes);

  spi_imx->rx_buf += n_bytes;
  spi_imx->slave_burst -= n_bytes;
 }

 spi_imx->remainder -= sizeof(u32);
}
