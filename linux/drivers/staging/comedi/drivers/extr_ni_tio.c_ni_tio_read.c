
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_gpct {TYPE_1__* counter_dev; } ;
typedef enum ni_gpct_register { ____Placeholder_ni_gpct_register } ni_gpct_register ;
struct TYPE_2__ {unsigned int (* read ) (struct ni_gpct*,int) ;} ;


 int NITIO_NUM_REGS ;
 unsigned int stub1 (struct ni_gpct*,int) ;

unsigned int ni_tio_read(struct ni_gpct *counter, enum ni_gpct_register reg)
{
 if (reg < NITIO_NUM_REGS)
  return counter->counter_dev->read(counter, reg);
 return 0;
}
