
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct comedi_subdevice* read_subdev; } ;
struct TYPE_2__ {int events; } ;


 int COMEDI_CB_EOA ;
 int get_last_sample_611x (struct comedi_device*) ;
 int get_last_sample_6143 (struct comedi_device*) ;
 int ni_ai_drain_dma (struct comedi_device*) ;
 int ni_handle_fifo_dregs (struct comedi_device*) ;

__attribute__((used)) static void shutdown_ai_command(struct comedi_device *dev)
{
 struct comedi_subdevice *s = dev->read_subdev;




 ni_handle_fifo_dregs(dev);
 get_last_sample_611x(dev);
 get_last_sample_6143(dev);

 s->async->events |= COMEDI_CB_EOA;
}
