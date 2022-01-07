
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct chip_data {int dummy; } ;


 int kfree (struct chip_data*) ;
 struct chip_data* spi_get_ctldata (struct spi_device*) ;
 int spi_set_ctldata (struct spi_device*,int *) ;

__attribute__((used)) static void dw_spi_cleanup(struct spi_device *spi)
{
 struct chip_data *chip = spi_get_ctldata(spi);

 kfree(chip);
 spi_set_ctldata(spi, ((void*)0));
}
