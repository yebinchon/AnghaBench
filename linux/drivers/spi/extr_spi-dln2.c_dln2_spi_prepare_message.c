
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {struct spi_device* spi; } ;
struct spi_master {int dummy; } ;
struct spi_device {scalar_t__ chip_select; } ;
struct dln2_spi {scalar_t__ cs; } ;


 int dln2_spi_cs_set_one (struct dln2_spi*,scalar_t__) ;
 struct dln2_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int dln2_spi_prepare_message(struct spi_master *master,
        struct spi_message *message)
{
 int ret;
 struct dln2_spi *dln2 = spi_master_get_devdata(master);
 struct spi_device *spi = message->spi;

 if (dln2->cs != spi->chip_select) {
  ret = dln2_spi_cs_set_one(dln2, spi->chip_select);
  if (ret < 0)
   return ret;

  dln2->cs = spi->chip_select;
 }

 return 0;
}
