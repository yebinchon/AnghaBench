
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci1710_private {unsigned int* act_chanlist; } ;
struct comedi_subdevice {unsigned int maxdata; } ;
struct comedi_device {int class_dev; scalar_t__ iobase; struct pci1710_private* private; struct boardtype* board_ptr; } ;
struct boardtype {int is_pci1713; } ;


 int ENODATA ;
 scalar_t__ PCI171X_AD_DATA_REG ;
 int dev_err (int ,char*,unsigned int,unsigned int) ;
 unsigned int inw (scalar_t__) ;

__attribute__((used)) static int pci1710_ai_read_sample(struct comedi_device *dev,
      struct comedi_subdevice *s,
      unsigned int cur_chan,
      unsigned int *val)
{
 const struct boardtype *board = dev->board_ptr;
 struct pci1710_private *devpriv = dev->private;
 unsigned int sample;
 unsigned int chan;

 sample = inw(dev->iobase + PCI171X_AD_DATA_REG);
 if (!board->is_pci1713) {





  chan = sample >> 12;
  if (chan != devpriv->act_chanlist[cur_chan]) {
   dev_err(dev->class_dev,
    "A/D data dropout: received from channel %d, expected %d\n",
    chan, devpriv->act_chanlist[cur_chan]);
   return -ENODATA;
  }
 }
 *val = sample & s->maxdata;
 return 0;
}
