
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stm32_spi {TYPE_3__* cfg; int dev; } ;
struct TYPE_6__ {TYPE_2__* regs; } ;
struct TYPE_4__ {int mask; int reg; } ;
struct TYPE_5__ {TYPE_1__ en; } ;


 int dev_dbg (int ,char*) ;
 int stm32_spi_set_bits (struct stm32_spi*,int ,int ) ;

__attribute__((used)) static void stm32_spi_enable(struct stm32_spi *spi)
{
 dev_dbg(spi->dev, "enable controller\n");

 stm32_spi_set_bits(spi, spi->cfg->regs->en.reg,
      spi->cfg->regs->en.mask);
}
