
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nbytes; } ;
struct spi_mem_op {TYPE_1__ addr; } ;
struct spi_mem {int dummy; } ;


 int spi_mem_default_supports_op (struct spi_mem*,struct spi_mem_op const*) ;

__attribute__((used)) static bool zynq_qspi_supports_op(struct spi_mem *mem,
      const struct spi_mem_op *op)
{
 if (!spi_mem_default_supports_op(mem, op))
  return 0;




 if (op->addr.nbytes > 3)
  return 0;

 return 1;
}
