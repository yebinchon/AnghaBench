
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {struct dw_spi_chip* controller_data; } ;
struct dw_spi_chip {int type; int poll_mode; scalar_t__ cs_control; } ;
struct chip_data {int tmode; int type; int poll_mode; scalar_t__ cs_control; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SPI_TMOD_TR ;
 struct chip_data* kzalloc (int,int ) ;
 struct chip_data* spi_get_ctldata (struct spi_device*) ;
 int spi_set_ctldata (struct spi_device*,struct chip_data*) ;

__attribute__((used)) static int dw_spi_setup(struct spi_device *spi)
{
 struct dw_spi_chip *chip_info = ((void*)0);
 struct chip_data *chip;


 chip = spi_get_ctldata(spi);
 if (!chip) {
  chip = kzalloc(sizeof(struct chip_data), GFP_KERNEL);
  if (!chip)
   return -ENOMEM;
  spi_set_ctldata(spi, chip);
 }





 chip_info = spi->controller_data;


 if (chip_info) {
  if (chip_info->cs_control)
   chip->cs_control = chip_info->cs_control;

  chip->poll_mode = chip_info->poll_mode;
  chip->type = chip_info->type;
 }

 chip->tmode = SPI_TMOD_TR;

 return 0;
}
