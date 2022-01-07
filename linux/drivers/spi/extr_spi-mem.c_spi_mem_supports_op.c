
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_mem_op {int dummy; } ;
struct spi_mem {int dummy; } ;


 scalar_t__ spi_mem_check_op (struct spi_mem_op const*) ;
 int spi_mem_internal_supports_op (struct spi_mem*,struct spi_mem_op const*) ;

bool spi_mem_supports_op(struct spi_mem *mem, const struct spi_mem_op *op)
{
 if (spi_mem_check_op(op))
  return 0;

 return spi_mem_internal_supports_op(mem, op);
}
