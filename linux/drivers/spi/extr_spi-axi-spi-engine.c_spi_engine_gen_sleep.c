
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_engine_program {int dummy; } ;
struct spi_engine {int ref_clk; } ;


 unsigned int DIV_ROUND_UP (unsigned int,unsigned int) ;
 int SPI_ENGINE_CMD_SLEEP (unsigned int) ;
 unsigned int clk_get_rate (int ) ;
 unsigned int min (unsigned int,unsigned int) ;
 int spi_engine_program_add_cmd (struct spi_engine_program*,int,int ) ;

__attribute__((used)) static void spi_engine_gen_sleep(struct spi_engine_program *p, bool dry,
 struct spi_engine *spi_engine, unsigned int clk_div, unsigned int delay)
{
 unsigned int spi_clk = clk_get_rate(spi_engine->ref_clk);
 unsigned int t;

 if (delay == 0)
  return;

 t = DIV_ROUND_UP(delay * spi_clk, (clk_div + 1) * 2);
 while (t) {
  unsigned int n = min(t, 256U);

  spi_engine_program_add_cmd(p, dry, SPI_ENGINE_CMD_SLEEP(n - 1));
  t -= n;
 }
}
