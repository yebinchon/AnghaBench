
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_private {TYPE_1__* counter_dev; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct comedi_subdevice* subdevices; struct ni_private* private; } ;
struct TYPE_2__ {int * counters; } ;


 size_t NI_GPCT_SUBDEV (unsigned short) ;
 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 int ni_tio_handle_interrupt (int *,struct comedi_subdevice*) ;

__attribute__((used)) static void handle_gpct_interrupt(struct comedi_device *dev,
      unsigned short counter_index)
{
}
