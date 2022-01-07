
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_engine_program {int dummy; } ;
struct spi_device {int chip_select; } ;


 unsigned int BIT (int ) ;
 int SPI_ENGINE_CMD_ASSERT (int,unsigned int) ;
 int spi_engine_program_add_cmd (struct spi_engine_program*,int,int ) ;

__attribute__((used)) static void spi_engine_gen_cs(struct spi_engine_program *p, bool dry,
  struct spi_device *spi, bool assert)
{
 unsigned int mask = 0xff;

 if (assert)
  mask ^= BIT(spi->chip_select);

 spi_engine_program_add_cmd(p, dry, SPI_ENGINE_CMD_ASSERT(1, mask));
}
