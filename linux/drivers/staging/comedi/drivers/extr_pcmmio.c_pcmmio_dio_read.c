
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmmio_private {int pagelock; } ;
struct comedi_device {unsigned long iobase; struct pcmmio_private* private; } ;


 int PCMMIO_PAGE (int) ;
 scalar_t__ PCMMIO_PAGE_LOCK_REG ;
 scalar_t__ PCMMIO_PAGE_REG (int) ;
 scalar_t__ PCMMIO_PORT_REG (int) ;
 int inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int pcmmio_dio_read(struct comedi_device *dev,
        int page, int port)
{
 struct pcmmio_private *devpriv = dev->private;
 unsigned long iobase = dev->iobase;
 unsigned long flags;
 unsigned int val;

 spin_lock_irqsave(&devpriv->pagelock, flags);
 if (page == 0) {

  val = inb(iobase + PCMMIO_PORT_REG(port + 0));
  val |= (inb(iobase + PCMMIO_PORT_REG(port + 1)) << 8);
  val |= (inb(iobase + PCMMIO_PORT_REG(port + 2)) << 16);
 } else {
  outb(PCMMIO_PAGE(page), iobase + PCMMIO_PAGE_LOCK_REG);
  val = inb(iobase + PCMMIO_PAGE_REG(0));
  val |= (inb(iobase + PCMMIO_PAGE_REG(1)) << 8);
  val |= (inb(iobase + PCMMIO_PAGE_REG(2)) << 16);
 }
 spin_unlock_irqrestore(&devpriv->pagelock, flags);

 return val;
}
