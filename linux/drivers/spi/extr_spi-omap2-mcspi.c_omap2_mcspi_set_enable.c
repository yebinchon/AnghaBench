
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_device {struct omap2_mcspi_cs* controller_state; } ;
struct omap2_mcspi_cs {int chctrl0; } ;


 int OMAP2_MCSPI_CHCTRL0 ;
 int OMAP2_MCSPI_CHCTRL_EN ;
 int mcspi_read_cs_reg (struct spi_device const*,int ) ;
 int mcspi_write_cs_reg (struct spi_device const*,int ,int ) ;

__attribute__((used)) static void omap2_mcspi_set_enable(const struct spi_device *spi, int enable)
{
 struct omap2_mcspi_cs *cs = spi->controller_state;
 u32 l;

 l = cs->chctrl0;
 if (enable)
  l |= OMAP2_MCSPI_CHCTRL_EN;
 else
  l &= ~OMAP2_MCSPI_CHCTRL_EN;
 cs->chctrl0 = l;
 mcspi_write_cs_reg(spi, OMAP2_MCSPI_CHCTRL0, cs->chctrl0);

 mcspi_read_cs_reg(spi, OMAP2_MCSPI_CHCTRL0);
}
