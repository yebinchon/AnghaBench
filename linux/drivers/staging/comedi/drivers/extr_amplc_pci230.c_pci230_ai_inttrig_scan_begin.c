
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci230_private {int ai_stop_spinlock; scalar_t__ ai_cmd_started; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; struct pci230_private* private; } ;


 int EINVAL ;
 int GAT_GND ;
 int GAT_VCC ;
 scalar_t__ PCI230_ZGAT_SCE ;
 int outb (unsigned char,scalar_t__) ;
 unsigned char pci230_gat_config (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pci230_ai_inttrig_scan_begin(struct comedi_device *dev,
     struct comedi_subdevice *s,
     unsigned int trig_num)
{
 struct pci230_private *devpriv = dev->private;
 unsigned long irqflags;
 unsigned char zgat;

 if (trig_num)
  return -EINVAL;

 spin_lock_irqsave(&devpriv->ai_stop_spinlock, irqflags);
 if (devpriv->ai_cmd_started) {

  zgat = pci230_gat_config(0, GAT_GND);
  outb(zgat, dev->iobase + PCI230_ZGAT_SCE);
  zgat = pci230_gat_config(0, GAT_VCC);
  outb(zgat, dev->iobase + PCI230_ZGAT_SCE);
 }
 spin_unlock_irqrestore(&devpriv->ai_stop_spinlock, irqflags);

 return 1;
}
