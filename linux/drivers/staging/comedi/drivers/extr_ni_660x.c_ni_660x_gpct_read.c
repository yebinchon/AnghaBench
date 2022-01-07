
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_gpct {int chip_index; TYPE_1__* counter_dev; } ;
struct comedi_device {int dummy; } ;
typedef enum ni_gpct_register { ____Placeholder_ni_gpct_register } ni_gpct_register ;
struct TYPE_2__ {struct comedi_device* dev; } ;


 unsigned int ni_660x_read (struct comedi_device*,int ,int) ;

__attribute__((used)) static unsigned int ni_660x_gpct_read(struct ni_gpct *counter,
          enum ni_gpct_register reg)
{
 struct comedi_device *dev = counter->counter_dev->dev;

 return ni_660x_read(dev, counter->chip_index, reg);
}
