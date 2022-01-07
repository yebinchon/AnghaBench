
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_gpct {int chip_index; TYPE_1__* counter_dev; } ;
struct comedi_device {int dummy; } ;
typedef enum ni_gpct_register { ____Placeholder_ni_gpct_register } ni_gpct_register ;
struct TYPE_2__ {struct comedi_device* dev; } ;


 int ni_660x_write (struct comedi_device*,int ,unsigned int,int) ;

__attribute__((used)) static void ni_660x_gpct_write(struct ni_gpct *counter, unsigned int bits,
          enum ni_gpct_register reg)
{
 struct comedi_device *dev = counter->counter_dev->dev;

 ni_660x_write(dev, counter->chip_index, bits, reg);
}
