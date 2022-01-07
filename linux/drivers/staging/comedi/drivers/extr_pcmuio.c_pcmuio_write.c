
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmuio_private {struct pcmuio_asic* asics; } ;
struct pcmuio_asic {int pagelock; } ;
struct comedi_device {struct pcmuio_private* private; } ;


 unsigned int PCMUIO_PAGE (int) ;
 scalar_t__ PCMUIO_PAGE_LOCK_REG ;
 scalar_t__ PCMUIO_PAGE_REG (int) ;
 scalar_t__ PCMUIO_PORT_REG (int) ;
 int outb (unsigned int,scalar_t__) ;
 unsigned long pcmuio_asic_iobase (struct comedi_device*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void pcmuio_write(struct comedi_device *dev, unsigned int val,
    int asic, int page, int port)
{
 struct pcmuio_private *devpriv = dev->private;
 struct pcmuio_asic *chip = &devpriv->asics[asic];
 unsigned long iobase = pcmuio_asic_iobase(dev, asic);
 unsigned long flags;

 spin_lock_irqsave(&chip->pagelock, flags);
 if (page == 0) {

  outb(val & 0xff, iobase + PCMUIO_PORT_REG(port + 0));
  outb((val >> 8) & 0xff, iobase + PCMUIO_PORT_REG(port + 1));
  outb((val >> 16) & 0xff, iobase + PCMUIO_PORT_REG(port + 2));
 } else {
  outb(PCMUIO_PAGE(page), iobase + PCMUIO_PAGE_LOCK_REG);
  outb(val & 0xff, iobase + PCMUIO_PAGE_REG(0));
  outb((val >> 8) & 0xff, iobase + PCMUIO_PAGE_REG(1));
  outb((val >> 16) & 0xff, iobase + PCMUIO_PAGE_REG(2));
 }
 spin_unlock_irqrestore(&chip->pagelock, flags);
}
