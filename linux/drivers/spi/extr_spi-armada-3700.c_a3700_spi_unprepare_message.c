
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {int dummy; } ;
struct spi_master {int dummy; } ;
struct a3700_spi {int clk; } ;


 int clk_disable (int ) ;
 struct a3700_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int a3700_spi_unprepare_message(struct spi_master *master,
           struct spi_message *message)
{
 struct a3700_spi *a3700_spi = spi_master_get_devdata(master);

 clk_disable(a3700_spi->clk);

 return 0;
}
