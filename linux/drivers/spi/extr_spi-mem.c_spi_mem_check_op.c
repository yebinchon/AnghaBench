
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int buswidth; scalar_t__ nbytes; } ;
struct TYPE_6__ {int buswidth; scalar_t__ nbytes; } ;
struct TYPE_5__ {int buswidth; scalar_t__ nbytes; } ;
struct TYPE_8__ {int buswidth; } ;
struct spi_mem_op {TYPE_3__ data; TYPE_2__ dummy; TYPE_1__ addr; TYPE_4__ cmd; } ;


 int EINVAL ;
 int spi_mem_buswidth_is_valid (int ) ;

__attribute__((used)) static int spi_mem_check_op(const struct spi_mem_op *op)
{
 if (!op->cmd.buswidth)
  return -EINVAL;

 if ((op->addr.nbytes && !op->addr.buswidth) ||
     (op->dummy.nbytes && !op->dummy.buswidth) ||
     (op->data.nbytes && !op->data.buswidth))
  return -EINVAL;

 if (!spi_mem_buswidth_is_valid(op->cmd.buswidth) ||
     !spi_mem_buswidth_is_valid(op->addr.buswidth) ||
     !spi_mem_buswidth_is_valid(op->dummy.buswidth) ||
     !spi_mem_buswidth_is_valid(op->data.buswidth))
  return -EINVAL;

 return 0;
}
