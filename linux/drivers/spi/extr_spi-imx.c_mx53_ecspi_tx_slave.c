
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int u8 ;
typedef scalar_t__ u32 ;
struct spi_imx_data {int count; int tx_buf; scalar_t__ base; } ;


 scalar_t__ MXC_CSPITXDATA ;
 scalar_t__ cpu_to_be32 (scalar_t__) ;
 int memcpy (int *,int,int) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void mx53_ecspi_tx_slave(struct spi_imx_data *spi_imx)
{
 u32 val = 0;
 int n_bytes = spi_imx->count % sizeof(val);

 if (!n_bytes)
  n_bytes = sizeof(val);

 if (spi_imx->tx_buf) {
  memcpy(((u8 *)&val) + sizeof(val) - n_bytes,
         spi_imx->tx_buf, n_bytes);
  val = cpu_to_be32(val);
  spi_imx->tx_buf += n_bytes;
 }

 spi_imx->count -= n_bytes;

 writel(val, spi_imx->base + MXC_CSPITXDATA);
}
