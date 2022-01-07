
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {struct spi_device* spi; } ;
struct spi_master {int dummy; } ;
struct spi_device {struct s3c64xx_spi_csinfo* controller_data; } ;
struct s3c64xx_spi_driver_data {scalar_t__ regs; } ;
struct s3c64xx_spi_csinfo {int fb_delay; } ;


 scalar_t__ S3C64XX_SPI_FB_CLK ;
 struct s3c64xx_spi_driver_data* spi_master_get_devdata (struct spi_master*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int s3c64xx_spi_prepare_message(struct spi_master *master,
           struct spi_message *msg)
{
 struct s3c64xx_spi_driver_data *sdd = spi_master_get_devdata(master);
 struct spi_device *spi = msg->spi;
 struct s3c64xx_spi_csinfo *cs = spi->controller_data;


 writel(cs->fb_delay & 0x3, sdd->regs + S3C64XX_SPI_FB_CLK);

 return 0;
}
