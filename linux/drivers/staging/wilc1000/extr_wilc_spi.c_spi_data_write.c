
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wilc_spi {int crc_off; } ;
struct wilc {struct wilc_spi* bus_data; int dev; } ;
struct spi_device {int dev; } ;


 int DATA_PKT_SZ ;
 int N_FAIL ;
 int dev_err (int *,char*) ;
 struct spi_device* to_spi_device (int ) ;
 scalar_t__ wilc_spi_tx (struct wilc*,int*,int) ;

__attribute__((used)) static int spi_data_write(struct wilc *wilc, u8 *b, u32 sz)
{
 struct spi_device *spi = to_spi_device(wilc->dev);
 struct wilc_spi *spi_priv = wilc->bus_data;
 int ix, nbytes;
 int result = 1;
 u8 cmd, order, crc[2] = {0};




 ix = 0;
 do {
  if (sz <= DATA_PKT_SZ) {
   nbytes = sz;
   order = 0x3;
  } else {
   nbytes = DATA_PKT_SZ;
   if (ix == 0)
    order = 0x1;
   else
    order = 0x02;
  }




  cmd = 0xf0;
  cmd |= order;

  if (wilc_spi_tx(wilc, &cmd, 1)) {
   dev_err(&spi->dev,
    "Failed data block cmd write, bus error...\n");
   result = N_FAIL;
   break;
  }




  if (wilc_spi_tx(wilc, &b[ix], nbytes)) {
   dev_err(&spi->dev,
    "Failed data block write, bus error...\n");
   result = N_FAIL;
   break;
  }




  if (!spi_priv->crc_off) {
   if (wilc_spi_tx(wilc, crc, 2)) {
    dev_err(&spi->dev, "Failed data block crc write, bus error...\n");
    result = N_FAIL;
    break;
   }
  }




  ix += nbytes;
  sz -= nbytes;
 } while (sz);

 return result;
}
