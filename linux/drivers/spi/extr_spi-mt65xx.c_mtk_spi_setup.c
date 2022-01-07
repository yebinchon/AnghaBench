
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int mode; int cs_gpio; void* controller_data; int master; } ;
struct mtk_spi {TYPE_1__* dev_comp; } ;
struct TYPE_2__ {scalar_t__ need_pad_sel; } ;


 int SPI_CS_HIGH ;
 int gpio_direction_output (int ,int) ;
 scalar_t__ gpio_is_valid (int ) ;
 int mtk_default_chip_info ;
 struct mtk_spi* spi_master_get_devdata (int ) ;

__attribute__((used)) static int mtk_spi_setup(struct spi_device *spi)
{
 struct mtk_spi *mdata = spi_master_get_devdata(spi->master);

 if (!spi->controller_data)
  spi->controller_data = (void *)&mtk_default_chip_info;

 if (mdata->dev_comp->need_pad_sel && gpio_is_valid(spi->cs_gpio))
  gpio_direction_output(spi->cs_gpio, !(spi->mode & SPI_CS_HIGH));

 return 0;
}
