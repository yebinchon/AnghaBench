
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcl816_private {int dma; } ;
struct comedi_device {unsigned int irq; int board_name; struct pcl816_private* private; } ;
struct comedi_devconfig {unsigned int* options; } ;


 int COMEDI_ISADMA_READ ;
 int PAGE_SIZE ;
 int comedi_isadma_alloc (struct comedi_device*,int,unsigned int,unsigned int,int,int ) ;
 int free_irq (unsigned int,struct comedi_device*) ;
 int pcl816_interrupt ;
 scalar_t__ request_irq (unsigned int,int ,int ,int ,struct comedi_device*) ;

__attribute__((used)) static void pcl816_alloc_irq_and_dma(struct comedi_device *dev,
         struct comedi_devconfig *it)
{
 struct pcl816_private *devpriv = dev->private;
 unsigned int irq_num = it->options[1];
 unsigned int dma_chan = it->options[2];


 if (!(irq_num >= 2 && irq_num <= 7) ||
     !(dma_chan == 3 || dma_chan == 1))
  return;

 if (request_irq(irq_num, pcl816_interrupt, 0, dev->board_name, dev))
  return;


 devpriv->dma = comedi_isadma_alloc(dev, 2, dma_chan, dma_chan,
        PAGE_SIZE * 4, COMEDI_ISADMA_READ);
 if (!devpriv->dma)
  free_irq(irq_num, dev);
 else
  dev->irq = irq_num;
}
