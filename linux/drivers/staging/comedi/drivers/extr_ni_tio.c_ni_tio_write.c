
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_gpct {TYPE_1__* counter_dev; } ;
typedef enum ni_gpct_register { ____Placeholder_ni_gpct_register } ni_gpct_register ;
struct TYPE_2__ {int (* write ) (struct ni_gpct*,unsigned int,int) ;} ;


 int NITIO_NUM_REGS ;
 int stub1 (struct ni_gpct*,unsigned int,int) ;

void ni_tio_write(struct ni_gpct *counter, unsigned int value,
    enum ni_gpct_register reg)
{
 if (reg < NITIO_NUM_REGS)
  counter->counter_dev->write(counter, value, reg);
}
