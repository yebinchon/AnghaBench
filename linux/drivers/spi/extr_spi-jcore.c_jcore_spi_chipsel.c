
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u32 ;
struct spi_device {int chip_select; int master; } ;
struct jcore_spi {unsigned int cs_reg; TYPE_2__* master; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int dev_dbg (int ,char*,int) ;
 int jcore_spi_program (struct jcore_spi*) ;
 struct jcore_spi* spi_master_get_devdata (int ) ;

__attribute__((used)) static void jcore_spi_chipsel(struct spi_device *spi, bool value)
{
 struct jcore_spi *hw = spi_master_get_devdata(spi->master);
 u32 csbit = 1U << (2 * spi->chip_select);

 dev_dbg(hw->master->dev.parent, "chipselect %d\n", spi->chip_select);

 if (value)
  hw->cs_reg |= csbit;
 else
  hw->cs_reg &= ~csbit;

 jcore_spi_program(hw);
}
