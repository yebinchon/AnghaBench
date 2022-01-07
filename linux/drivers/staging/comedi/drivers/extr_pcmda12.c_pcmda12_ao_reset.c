
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int n_chan; } ;
struct comedi_device {scalar_t__ iobase; } ;


 int inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static void pcmda12_ao_reset(struct comedi_device *dev,
        struct comedi_subdevice *s)
{
 int i;

 for (i = 0; i < s->n_chan; ++i) {
  outb(0, dev->iobase + (i * 2));
  outb(0, dev->iobase + (i * 2) + 1);
 }

 inb(dev->iobase);
}
