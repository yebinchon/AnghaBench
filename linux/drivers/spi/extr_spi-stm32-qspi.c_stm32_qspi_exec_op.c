
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_qspi {int lock; } ;
struct spi_mem_op {int dummy; } ;
struct spi_mem {TYPE_1__* spi; } ;
struct TYPE_2__ {int master; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct stm32_qspi* spi_controller_get_devdata (int ) ;
 int stm32_qspi_send (struct spi_mem*,struct spi_mem_op const*) ;

__attribute__((used)) static int stm32_qspi_exec_op(struct spi_mem *mem, const struct spi_mem_op *op)
{
 struct stm32_qspi *qspi = spi_controller_get_devdata(mem->spi->master);
 int ret;

 mutex_lock(&qspi->lock);
 ret = stm32_qspi_send(mem, op);
 mutex_unlock(&qspi->lock);

 return ret;
}
