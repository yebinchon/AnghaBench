
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun6i_spi {int dummy; } ;
struct spi_device {int chip_select; int master; } ;


 int SUN6I_TFR_CTL_CS (int ) ;
 int SUN6I_TFR_CTL_CS_LEVEL ;
 int SUN6I_TFR_CTL_CS_MASK ;
 int SUN6I_TFR_CTL_REG ;
 struct sun6i_spi* spi_master_get_devdata (int ) ;
 int sun6i_spi_read (struct sun6i_spi*,int ) ;
 int sun6i_spi_write (struct sun6i_spi*,int ,int ) ;

__attribute__((used)) static void sun6i_spi_set_cs(struct spi_device *spi, bool enable)
{
 struct sun6i_spi *sspi = spi_master_get_devdata(spi->master);
 u32 reg;

 reg = sun6i_spi_read(sspi, SUN6I_TFR_CTL_REG);
 reg &= ~SUN6I_TFR_CTL_CS_MASK;
 reg |= SUN6I_TFR_CTL_CS(spi->chip_select);

 if (enable)
  reg |= SUN6I_TFR_CTL_CS_LEVEL;
 else
  reg &= ~SUN6I_TFR_CTL_CS_LEVEL;

 sun6i_spi_write(sspi, SUN6I_TFR_CTL_REG, reg);
}
