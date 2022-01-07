
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tle62x0_state {int nr_gpio; } ;
struct spi_device {int dev; } ;


 int dev_attr_status_show ;
 int device_remove_file (int *,int *) ;
 int ** gpio_attrs ;
 int kfree (struct tle62x0_state*) ;
 struct tle62x0_state* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int tle62x0_remove(struct spi_device *spi)
{
 struct tle62x0_state *st = spi_get_drvdata(spi);
 int ptr;

 for (ptr = 0; ptr < st->nr_gpio; ptr++)
  device_remove_file(&spi->dev, gpio_attrs[ptr]);

 device_remove_file(&spi->dev, &dev_attr_status_show);
 kfree(st);
 return 0;
}
