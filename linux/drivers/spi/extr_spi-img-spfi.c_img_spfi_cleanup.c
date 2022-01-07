
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int cs_gpio; } ;
struct img_spfi_device_data {scalar_t__ gpio_requested; } ;


 int gpio_free (int ) ;
 int kfree (struct img_spfi_device_data*) ;
 struct img_spfi_device_data* spi_get_ctldata (struct spi_device*) ;
 int spi_set_ctldata (struct spi_device*,int *) ;

__attribute__((used)) static void img_spfi_cleanup(struct spi_device *spi)
{
 struct img_spfi_device_data *spfi_data = spi_get_ctldata(spi);

 if (spfi_data) {
  if (spfi_data->gpio_requested)
   gpio_free(spi->cs_gpio);
  kfree(spfi_data);
  spi_set_ctldata(spi, ((void*)0));
 }
}
