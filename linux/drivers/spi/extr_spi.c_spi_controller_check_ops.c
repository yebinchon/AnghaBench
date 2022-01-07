
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_controller {int transfer_one_message; int transfer_one; int transfer; TYPE_1__* mem_ops; } ;
struct TYPE_2__ {int exec_op; } ;


 int EINVAL ;

__attribute__((used)) static int spi_controller_check_ops(struct spi_controller *ctlr)
{







 if (ctlr->mem_ops) {
  if (!ctlr->mem_ops->exec_op)
   return -EINVAL;
 } else if (!ctlr->transfer && !ctlr->transfer_one &&
     !ctlr->transfer_one_message) {
  return -EINVAL;
 }

 return 0;
}
