
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_spi {TYPE_1__* cfg; } ;
struct spi_message {int dummy; } ;
struct spi_master {int dummy; } ;
struct TYPE_2__ {int (* disable ) (struct stm32_spi*) ;} ;


 struct stm32_spi* spi_master_get_devdata (struct spi_master*) ;
 int stub1 (struct stm32_spi*) ;

__attribute__((used)) static int stm32_spi_unprepare_msg(struct spi_master *master,
       struct spi_message *msg)
{
 struct stm32_spi *spi = spi_master_get_devdata(master);

 spi->cfg->disable(spi);

 return 0;
}
