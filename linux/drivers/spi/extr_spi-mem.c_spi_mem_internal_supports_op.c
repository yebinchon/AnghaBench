
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_mem_op {int dummy; } ;
struct spi_mem {TYPE_1__* spi; } ;
struct spi_controller {TYPE_2__* mem_ops; } ;
struct TYPE_4__ {int (* supports_op ) (struct spi_mem*,struct spi_mem_op const*) ;} ;
struct TYPE_3__ {struct spi_controller* controller; } ;


 int spi_mem_default_supports_op (struct spi_mem*,struct spi_mem_op const*) ;
 int stub1 (struct spi_mem*,struct spi_mem_op const*) ;

__attribute__((used)) static bool spi_mem_internal_supports_op(struct spi_mem *mem,
      const struct spi_mem_op *op)
{
 struct spi_controller *ctlr = mem->spi->controller;

 if (ctlr->mem_ops && ctlr->mem_ops->supports_op)
  return ctlr->mem_ops->supports_op(mem, op);

 return spi_mem_default_supports_op(mem, op);
}
