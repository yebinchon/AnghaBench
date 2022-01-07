
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int bits_per_word; int mode; int max_speed_hz; struct mpc512x_psc_spi_cs* controller_state; int cs_gpio; int dev; } ;
struct mpc512x_psc_spi_cs {int bits_per_word; int speed_hz; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SPI_CS_HIGH ;
 int dev_err (int *,char*,int) ;
 int dev_name (int *) ;
 int gpio_direction_output (int ,int) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_request (int ,int ) ;
 int kfree (struct mpc512x_psc_spi_cs*) ;
 struct mpc512x_psc_spi_cs* kzalloc (int,int ) ;

__attribute__((used)) static int mpc512x_psc_spi_setup(struct spi_device *spi)
{
 struct mpc512x_psc_spi_cs *cs = spi->controller_state;
 int ret;

 if (spi->bits_per_word % 8)
  return -EINVAL;

 if (!cs) {
  cs = kzalloc(sizeof *cs, GFP_KERNEL);
  if (!cs)
   return -ENOMEM;

  if (gpio_is_valid(spi->cs_gpio)) {
   ret = gpio_request(spi->cs_gpio, dev_name(&spi->dev));
   if (ret) {
    dev_err(&spi->dev, "can't get CS gpio: %d\n",
     ret);
    kfree(cs);
    return ret;
   }
   gpio_direction_output(spi->cs_gpio,
     spi->mode & SPI_CS_HIGH ? 0 : 1);
  }

  spi->controller_state = cs;
 }

 cs->bits_per_word = spi->bits_per_word;
 cs->speed_hz = spi->max_speed_hz;

 return 0;
}
