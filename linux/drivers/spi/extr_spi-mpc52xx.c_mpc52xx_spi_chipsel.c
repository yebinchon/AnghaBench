
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mpc52xx_spi {scalar_t__ gpio_cs_count; scalar_t__ regs; int * gpio_cs; TYPE_2__* message; } ;
struct TYPE_4__ {TYPE_1__* spi; } ;
struct TYPE_3__ {int chip_select; } ;


 scalar_t__ SPI_PORTDATA ;
 int gpio_set_value (int ,int) ;
 int out_8 (scalar_t__,int) ;

__attribute__((used)) static void mpc52xx_spi_chipsel(struct mpc52xx_spi *ms, int value)
{
 int cs;

 if (ms->gpio_cs_count > 0) {
  cs = ms->message->spi->chip_select;
  gpio_set_value(ms->gpio_cs[cs], value ? 0 : 1);
 } else
  out_8(ms->regs + SPI_PORTDATA, value ? 0 : 0x08);
}
