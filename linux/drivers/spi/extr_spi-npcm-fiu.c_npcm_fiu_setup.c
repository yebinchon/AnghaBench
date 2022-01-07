
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {size_t chip_select; int max_speed_hz; struct spi_controller* master; } ;
struct spi_controller {int dummy; } ;
struct npcm_fiu_spi {int clk; int clkrate; struct npcm_fiu_chip* chip; } ;
struct npcm_fiu_chip {size_t chipselect; int clkrate; struct npcm_fiu_spi* fiu; } ;


 int clk_get_rate (int ) ;
 struct npcm_fiu_spi* spi_controller_get_devdata (struct spi_controller*) ;

__attribute__((used)) static int npcm_fiu_setup(struct spi_device *spi)
{
 struct spi_controller *ctrl = spi->master;
 struct npcm_fiu_spi *fiu = spi_controller_get_devdata(ctrl);
 struct npcm_fiu_chip *chip;

 chip = &fiu->chip[spi->chip_select];
 chip->fiu = fiu;
 chip->chipselect = spi->chip_select;
 chip->clkrate = spi->max_speed_hz;

 fiu->clkrate = clk_get_rate(fiu->clk);

 return 0;
}
