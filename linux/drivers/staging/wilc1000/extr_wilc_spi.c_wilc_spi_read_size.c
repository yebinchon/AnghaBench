
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wilc_spi {scalar_t__ has_thrpt_enh; } ;
struct wilc {struct wilc_spi* bus_data; int dev; } ;
struct spi_device {int dev; } ;


 int IRQ_DMA_WD_CNT_MASK ;
 scalar_t__ WILC_SPI_REG_BASE ;
 int WILC_VMM_TO_HOST_SIZE ;
 int dev_err (int *,char*) ;
 int spi_internal_read (struct wilc*,scalar_t__,int*) ;
 struct spi_device* to_spi_device (int ) ;
 int wilc_spi_read_reg (struct wilc*,int ,int*) ;

__attribute__((used)) static int wilc_spi_read_size(struct wilc *wilc, u32 *size)
{
 struct spi_device *spi = to_spi_device(wilc->dev);
 struct wilc_spi *spi_priv = wilc->bus_data;
 int ret;

 if (spi_priv->has_thrpt_enh) {
  ret = spi_internal_read(wilc, 0xe840 - WILC_SPI_REG_BASE,
     size);
  *size = *size & IRQ_DMA_WD_CNT_MASK;
 } else {
  u32 tmp;
  u32 byte_cnt;

  ret = wilc_spi_read_reg(wilc, WILC_VMM_TO_HOST_SIZE,
     &byte_cnt);
  if (!ret) {
   dev_err(&spi->dev,
    "Failed read WILC_VMM_TO_HOST_SIZE ...\n");
   return ret;
  }
  tmp = (byte_cnt >> 2) & IRQ_DMA_WD_CNT_MASK;
  *size = tmp;
 }

 return ret;
}
