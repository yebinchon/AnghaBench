
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int class_dev; } ;
struct TYPE_2__ {int events; } ;


 int COMEDI_CB_ERROR ;
 int dev_err (int ,char*) ;
 scalar_t__ pcl818_ai_eoc (struct comedi_device*,struct comedi_subdevice*,int *,int ) ;
 unsigned int pcl818_ai_get_sample (struct comedi_device*,struct comedi_subdevice*,unsigned int*) ;
 int pcl818_ai_write_sample (struct comedi_device*,struct comedi_subdevice*,unsigned int,unsigned int) ;

__attribute__((used)) static void pcl818_handle_eoc(struct comedi_device *dev,
         struct comedi_subdevice *s)
{
 unsigned int chan;
 unsigned int val;

 if (pcl818_ai_eoc(dev, s, ((void*)0), 0)) {
  dev_err(dev->class_dev, "A/D mode1/3 IRQ without DRDY!\n");
  s->async->events |= COMEDI_CB_ERROR;
  return;
 }

 val = pcl818_ai_get_sample(dev, s, &chan);
 pcl818_ai_write_sample(dev, s, chan, val);
}
