
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tle62x0_state {int nr_gpio; int lock; int gpio_state; struct spi_device* us; } ;
struct tle62x0_pdata {int gpio_count; int init_state; } ;
struct spi_device {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_attr_status_show ;
 int dev_err (int *,char*) ;
 struct tle62x0_pdata* dev_get_platdata (int *) ;
 int device_create_file (int *,int *) ;
 int device_remove_file (int *,int *) ;
 int ** gpio_attrs ;
 int kfree (struct tle62x0_state*) ;
 struct tle62x0_state* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int spi_set_drvdata (struct spi_device*,struct tle62x0_state*) ;

__attribute__((used)) static int tle62x0_probe(struct spi_device *spi)
{
 struct tle62x0_state *st;
 struct tle62x0_pdata *pdata;
 int ptr;
 int ret;

 pdata = dev_get_platdata(&spi->dev);
 if (pdata == ((void*)0)) {
  dev_err(&spi->dev, "no device data specified\n");
  return -EINVAL;
 }

 st = kzalloc(sizeof(struct tle62x0_state), GFP_KERNEL);
 if (st == ((void*)0))
  return -ENOMEM;

 st->us = spi;
 st->nr_gpio = pdata->gpio_count;
 st->gpio_state = pdata->init_state;

 mutex_init(&st->lock);

 ret = device_create_file(&spi->dev, &dev_attr_status_show);
 if (ret) {
  dev_err(&spi->dev, "cannot create status attribute\n");
  goto err_status;
 }

 for (ptr = 0; ptr < pdata->gpio_count; ptr++) {
  ret = device_create_file(&spi->dev, gpio_attrs[ptr]);
  if (ret) {
   dev_err(&spi->dev, "cannot create gpio attribute\n");
   goto err_gpios;
  }
 }


 spi_set_drvdata(spi, st);
 return 0;

 err_gpios:
 while (--ptr >= 0)
  device_remove_file(&spi->dev, gpio_attrs[ptr]);

 device_remove_file(&spi->dev, &dev_attr_status_show);

 err_status:
 kfree(st);
 return ret;
}
