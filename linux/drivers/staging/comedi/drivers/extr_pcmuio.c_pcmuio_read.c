
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmuio_private {struct pcmuio_asic* asics; } ;
struct pcmuio_asic {int pagelock; } ;
struct comedi_device {struct pcmuio_private* private; } ;


 int PCMUIO_PAGE (int) ;
 scalar_t__ PCMUIO_PAGE_LOCK_REG ;
 scalar_t__ PCMUIO_PAGE_REG (int) ;
 scalar_t__ PCMUIO_PORT_REG (int) ;
 int inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;
 unsigned long pcmuio_asic_iobase (struct comedi_device*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int pcmuio_read(struct comedi_device *dev,
    int asic, int page, int port)
{
 struct pcmuio_private *devpriv = dev->private;
 struct pcmuio_asic *chip = &devpriv->asics[asic];
 unsigned long iobase = pcmuio_asic_iobase(dev, asic);
 unsigned long flags;
 unsigned int val;

 spin_lock_irqsave(&chip->pagelock, flags);
 if (page == 0) {

  val = inb(iobase + PCMUIO_PORT_REG(port + 0));
  val |= (inb(iobase + PCMUIO_PORT_REG(port + 1)) << 8);
  val |= (inb(iobase + PCMUIO_PORT_REG(port + 2)) << 16);
 } else {
  outb(PCMUIO_PAGE(page), iobase + PCMUIO_PAGE_LOCK_REG);
  val = inb(iobase + PCMUIO_PAGE_REG(0));
  val |= (inb(iobase + PCMUIO_PAGE_REG(1)) << 8);
  val |= (inb(iobase + PCMUIO_PAGE_REG(2)) << 16);
 }
 spin_unlock_irqrestore(&chip->pagelock, flags);

 return val;
}
