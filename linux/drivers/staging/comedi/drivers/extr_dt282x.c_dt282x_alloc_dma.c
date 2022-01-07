
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dt282x_private {int dma; } ;
struct comedi_device {unsigned int irq; int board_name; struct dt282x_private* private; } ;
struct comedi_devconfig {unsigned int* options; } ;


 int PAGE_SIZE ;
 int comedi_isadma_alloc (struct comedi_device*,int,unsigned int,unsigned int,int ,int ) ;
 int dt282x_interrupt ;
 int free_irq (unsigned int,struct comedi_device*) ;
 scalar_t__ request_irq (unsigned int,int ,int ,int ,struct comedi_device*) ;

__attribute__((used)) static void dt282x_alloc_dma(struct comedi_device *dev,
        struct comedi_devconfig *it)
{
 struct dt282x_private *devpriv = dev->private;
 unsigned int irq_num = it->options[1];
 unsigned int dma_chan[2];

 if (it->options[2] < it->options[3]) {
  dma_chan[0] = it->options[2];
  dma_chan[1] = it->options[3];
 } else {
  dma_chan[0] = it->options[3];
  dma_chan[1] = it->options[2];
 }

 if (!irq_num || dma_chan[0] == dma_chan[1] ||
     dma_chan[0] < 5 || dma_chan[0] > 7 ||
     dma_chan[1] < 5 || dma_chan[1] > 7)
  return;

 if (request_irq(irq_num, dt282x_interrupt, 0, dev->board_name, dev))
  return;


 devpriv->dma = comedi_isadma_alloc(dev, 2, dma_chan[0], dma_chan[1],
        PAGE_SIZE, 0);
 if (!devpriv->dma)
  free_irq(irq_num, dev);
 else
  dev->irq = irq_num;
}
