
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wilc_spi {int nint; } ;
struct wilc {struct wilc_spi* bus_data; int dev; } ;
struct spi_device {int dev; } ;


 int BIT (int) ;
 int MAX_NUM_INT ;
 int WILC_INTR2_ENABLE ;
 int WILC_INTR_ENABLE ;
 int WILC_PIN_MUX_0 ;
 int dev_err (int *,char*,int) ;
 struct spi_device* to_spi_device (int ) ;
 int wilc_spi_read_reg (struct wilc*,int,int *) ;
 int wilc_spi_write_reg (struct wilc*,int,int ) ;

__attribute__((used)) static int wilc_spi_sync_ext(struct wilc *wilc, int nint)
{
 struct spi_device *spi = to_spi_device(wilc->dev);
 struct wilc_spi *spi_priv = wilc->bus_data;
 u32 reg;
 int ret, i;

 if (nint > MAX_NUM_INT) {
  dev_err(&spi->dev, "Too many interrupts (%d)...\n", nint);
  return 0;
 }

 spi_priv->nint = nint;




 ret = wilc_spi_read_reg(wilc, WILC_PIN_MUX_0, &reg);
 if (!ret) {
  dev_err(&spi->dev, "Failed read reg (%08x)...\n",
   WILC_PIN_MUX_0);
  return 0;
 }
 reg |= BIT(8);
 ret = wilc_spi_write_reg(wilc, WILC_PIN_MUX_0, reg);
 if (!ret) {
  dev_err(&spi->dev, "Failed write reg (%08x)...\n",
   WILC_PIN_MUX_0);
  return 0;
 }




 ret = wilc_spi_read_reg(wilc, WILC_INTR_ENABLE, &reg);
 if (!ret) {
  dev_err(&spi->dev, "Failed read reg (%08x)...\n",
   WILC_INTR_ENABLE);
  return 0;
 }

 for (i = 0; (i < 5) && (nint > 0); i++, nint--)
  reg |= (BIT((27 + i)));

 ret = wilc_spi_write_reg(wilc, WILC_INTR_ENABLE, reg);
 if (!ret) {
  dev_err(&spi->dev, "Failed write reg (%08x)...\n",
   WILC_INTR_ENABLE);
  return 0;
 }
 if (nint) {
  ret = wilc_spi_read_reg(wilc, WILC_INTR2_ENABLE, &reg);
  if (!ret) {
   dev_err(&spi->dev, "Failed read reg (%08x)...\n",
    WILC_INTR2_ENABLE);
   return 0;
  }

  for (i = 0; (i < 3) && (nint > 0); i++, nint--)
   reg |= BIT(i);

  ret = wilc_spi_read_reg(wilc, WILC_INTR2_ENABLE, &reg);
  if (!ret) {
   dev_err(&spi->dev, "Failed write reg (%08x)...\n",
    WILC_INTR2_ENABLE);
   return 0;
  }
 }

 return 1;
}
