
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ni_gpct {TYPE_2__* counter_dev; } ;
struct comedi_subdevice {struct ni_gpct* private; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int class_dev; } ;


 int ENOTSUPP ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int ni_tio_output_cmd(struct comedi_subdevice *s)
{
 struct ni_gpct *counter = s->private;

 dev_err(counter->counter_dev->dev->class_dev,
  "output commands not yet implemented.\n");
 return -ENOTSUPP;
}
