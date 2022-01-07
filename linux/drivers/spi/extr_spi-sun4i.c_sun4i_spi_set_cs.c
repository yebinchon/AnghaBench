
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun4i_spi {int dummy; } ;
struct spi_device {int mode; int chip_select; int master; } ;


 int SPI_CS_HIGH ;
 int SUN4I_CTL_CS (int ) ;
 int SUN4I_CTL_CS_ACTIVE_LOW ;
 int SUN4I_CTL_CS_LEVEL ;
 int SUN4I_CTL_CS_MANUAL ;
 int SUN4I_CTL_CS_MASK ;
 int SUN4I_CTL_REG ;
 struct sun4i_spi* spi_master_get_devdata (int ) ;
 int sun4i_spi_read (struct sun4i_spi*,int ) ;
 int sun4i_spi_write (struct sun4i_spi*,int ,int ) ;

__attribute__((used)) static void sun4i_spi_set_cs(struct spi_device *spi, bool enable)
{
 struct sun4i_spi *sspi = spi_master_get_devdata(spi->master);
 u32 reg;

 reg = sun4i_spi_read(sspi, SUN4I_CTL_REG);

 reg &= ~SUN4I_CTL_CS_MASK;
 reg |= SUN4I_CTL_CS(spi->chip_select);


 reg |= SUN4I_CTL_CS_MANUAL;

 if (enable)
  reg |= SUN4I_CTL_CS_LEVEL;
 else
  reg &= ~SUN4I_CTL_CS_LEVEL;
 if (spi->mode & SPI_CS_HIGH)
  reg &= ~SUN4I_CTL_CS_ACTIVE_LOW;
 else
  reg |= SUN4I_CTL_CS_ACTIVE_LOW;

 sun4i_spi_write(sspi, SUN4I_CTL_REG, reg);
}
