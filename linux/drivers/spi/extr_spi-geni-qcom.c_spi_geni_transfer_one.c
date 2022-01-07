
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int len; } ;
struct spi_master {int dummy; } ;
struct spi_geni_master {int dummy; } ;
struct spi_device {int mode; } ;


 int setup_fifo_xfer (struct spi_transfer*,struct spi_geni_master*,int ,struct spi_master*) ;
 struct spi_geni_master* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int spi_geni_transfer_one(struct spi_master *spi,
    struct spi_device *slv,
    struct spi_transfer *xfer)
{
 struct spi_geni_master *mas = spi_master_get_devdata(spi);


 if (!xfer->len)
  return 0;

 setup_fifo_xfer(xfer, mas, slv->mode, spi);
 return 1;
}
