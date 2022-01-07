
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int of_node; } ;
struct spi_device {int mode; int max_speed_hz; TYPE_2__ dev; int controller; } ;
struct fsl_dspi_platform_data {int sck_cs_delay; int cs_sck_delay; } ;
struct fsl_dspi {int ctlr; int clk; TYPE_1__* pdev; } ;
struct chip_data {int ctar_val; scalar_t__ void_write_data; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_CTAR_ASC (unsigned char) ;
 int SPI_CTAR_BR (unsigned char) ;
 int SPI_CTAR_CPHA ;
 int SPI_CTAR_CPOL ;
 int SPI_CTAR_CSSCK (unsigned char) ;
 int SPI_CTAR_LSBFE ;
 int SPI_CTAR_PASC (unsigned char) ;
 int SPI_CTAR_PBR (unsigned char) ;
 int SPI_CTAR_PCSSCK (unsigned char) ;
 int SPI_LSB_FIRST ;
 unsigned long clk_get_rate (int ) ;
 struct fsl_dspi_platform_data* dev_get_platdata (int *) ;
 int hz_to_spi_baud (unsigned char*,unsigned char*,int ,unsigned long) ;
 struct chip_data* kzalloc (int,int ) ;
 int ns_delay_scale (unsigned char*,unsigned char*,int ,unsigned long) ;
 int of_property_read_u32 (int ,char*,int *) ;
 struct fsl_dspi* spi_controller_get_devdata (int ) ;
 int spi_controller_is_slave (int ) ;
 struct chip_data* spi_get_ctldata (struct spi_device*) ;
 int spi_set_ctldata (struct spi_device*,struct chip_data*) ;

__attribute__((used)) static int dspi_setup(struct spi_device *spi)
{
 struct fsl_dspi *dspi = spi_controller_get_devdata(spi->controller);
 unsigned char br = 0, pbr = 0, pcssck = 0, cssck = 0;
 u32 cs_sck_delay = 0, sck_cs_delay = 0;
 struct fsl_dspi_platform_data *pdata;
 unsigned char pasc = 0, asc = 0;
 struct chip_data *chip;
 unsigned long clkrate;


 chip = spi_get_ctldata(spi);
 if (chip == ((void*)0)) {
  chip = kzalloc(sizeof(struct chip_data), GFP_KERNEL);
  if (!chip)
   return -ENOMEM;
 }

 pdata = dev_get_platdata(&dspi->pdev->dev);

 if (!pdata) {
  of_property_read_u32(spi->dev.of_node, "fsl,spi-cs-sck-delay",
         &cs_sck_delay);

  of_property_read_u32(spi->dev.of_node, "fsl,spi-sck-cs-delay",
         &sck_cs_delay);
 } else {
  cs_sck_delay = pdata->cs_sck_delay;
  sck_cs_delay = pdata->sck_cs_delay;
 }

 chip->void_write_data = 0;

 clkrate = clk_get_rate(dspi->clk);
 hz_to_spi_baud(&pbr, &br, spi->max_speed_hz, clkrate);


 ns_delay_scale(&pcssck, &cssck, cs_sck_delay, clkrate);


 ns_delay_scale(&pasc, &asc, sck_cs_delay, clkrate);

 chip->ctar_val = 0;
 if (spi->mode & SPI_CPOL)
  chip->ctar_val |= SPI_CTAR_CPOL;
 if (spi->mode & SPI_CPHA)
  chip->ctar_val |= SPI_CTAR_CPHA;

 if (!spi_controller_is_slave(dspi->ctlr)) {
  chip->ctar_val |= SPI_CTAR_PCSSCK(pcssck) |
      SPI_CTAR_CSSCK(cssck) |
      SPI_CTAR_PASC(pasc) |
      SPI_CTAR_ASC(asc) |
      SPI_CTAR_PBR(pbr) |
      SPI_CTAR_BR(br);

  if (spi->mode & SPI_LSB_FIRST)
   chip->ctar_val |= SPI_CTAR_LSBFE;
 }

 spi_set_ctldata(spi, chip);

 return 0;
}
