
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_ppc4xx_cs {int mode; } ;
struct spi_device {int mode; struct spi_ppc4xx_cs* controller_state; int dev; int max_speed_hz; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SPI_CLK_MODE0 ;
 int SPI_CLK_MODE1 ;
 int SPI_CLK_MODE2 ;
 int SPI_CLK_MODE3 ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_LSB_FIRST ;




 int SPI_PPC4XX_MODE_RD ;
 int SPI_PPC4XX_MODE_SPE ;
 int dev_err (int *,char*) ;
 struct spi_ppc4xx_cs* kzalloc (int,int ) ;

__attribute__((used)) static int spi_ppc4xx_setup(struct spi_device *spi)
{
 struct spi_ppc4xx_cs *cs = spi->controller_state;

 if (!spi->max_speed_hz) {
  dev_err(&spi->dev, "invalid max_speed_hz (must be non-zero)\n");
  return -EINVAL;
 }

 if (cs == ((void*)0)) {
  cs = kzalloc(sizeof *cs, GFP_KERNEL);
  if (!cs)
   return -ENOMEM;
  spi->controller_state = cs;
 }





 cs->mode = SPI_PPC4XX_MODE_SPE;

 switch (spi->mode & (SPI_CPHA | SPI_CPOL)) {
 case 131:
  cs->mode |= SPI_CLK_MODE0;
  break;
 case 130:
  cs->mode |= SPI_CLK_MODE1;
  break;
 case 129:
  cs->mode |= SPI_CLK_MODE2;
  break;
 case 128:
  cs->mode |= SPI_CLK_MODE3;
  break;
 }

 if (spi->mode & SPI_LSB_FIRST)
  cs->mode |= SPI_PPC4XX_MODE_RD;

 return 0;
}
