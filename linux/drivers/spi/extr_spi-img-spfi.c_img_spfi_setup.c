
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int mode; int cs_gpio; int dev; } ;
struct img_spfi_device_data {int gpio_requested; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOF_OUT_INIT_HIGH ;
 int GPIOF_OUT_INIT_LOW ;
 int SPI_CS_HIGH ;
 int dev_err (int *,char*,int ,...) ;
 int dev_name (int *) ;
 int gpio_direction_output (int ,int) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_request_one (int ,int,int ) ;
 struct img_spfi_device_data* kzalloc (int,int ) ;
 struct img_spfi_device_data* spi_get_ctldata (struct spi_device*) ;
 int spi_set_ctldata (struct spi_device*,struct img_spfi_device_data*) ;

__attribute__((used)) static int img_spfi_setup(struct spi_device *spi)
{
 int ret = -EINVAL;
 struct img_spfi_device_data *spfi_data = spi_get_ctldata(spi);

 if (!spfi_data) {
  spfi_data = kzalloc(sizeof(*spfi_data), GFP_KERNEL);
  if (!spfi_data)
   return -ENOMEM;
  spfi_data->gpio_requested = 0;
  spi_set_ctldata(spi, spfi_data);
 }
 if (!spfi_data->gpio_requested) {
  ret = gpio_request_one(spi->cs_gpio,
           (spi->mode & SPI_CS_HIGH) ?
           GPIOF_OUT_INIT_LOW : GPIOF_OUT_INIT_HIGH,
           dev_name(&spi->dev));
  if (ret)
   dev_err(&spi->dev, "can't request chipselect gpio %d\n",
    spi->cs_gpio);
  else
   spfi_data->gpio_requested = 1;
 } else {
  if (gpio_is_valid(spi->cs_gpio)) {
   int mode = ((spi->mode & SPI_CS_HIGH) ?
        GPIOF_OUT_INIT_LOW : GPIOF_OUT_INIT_HIGH);

   ret = gpio_direction_output(spi->cs_gpio, mode);
   if (ret)
    dev_err(&spi->dev, "chipselect gpio %d setup failed (%d)\n",
     spi->cs_gpio, ret);
  }
 }
 return ret;
}
