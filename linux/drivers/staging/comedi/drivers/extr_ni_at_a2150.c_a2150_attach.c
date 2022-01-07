
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; int len_chanlist; int cancel; int do_cmdtest; int do_cmd; int insn_read; int * range_table; int type; } ;
struct comedi_device {scalar_t__ iobase; int class_dev; struct comedi_subdevice* read_subdev; scalar_t__ irq; struct comedi_subdevice* subdevices; int pacer; int board_name; struct a2150_board const* board_ptr; } ;
struct comedi_devconfig {int * options; } ;
struct a2150_private {int irq_dma_bits; int config_bits; } ;
struct a2150_board {int name; } ;


 int APD_BIT ;
 int COMEDI_SUBD_AI ;
 scalar_t__ CONFIG_REG ;
 int DCAL_BIT ;
 int DPD_BIT ;
 int ENABLE0_BIT ;
 int ENABLE1_BIT ;
 int ENODEV ;
 int ENOMEM ;
 int ETIME ;
 scalar_t__ I8253_BASE_REG ;
 int I8254_IO8 ;
 scalar_t__ IRQ_DMA_CNTRL_REG ;
 int SDF_CMD_READ ;
 int SDF_GROUND ;
 int SDF_OTHER ;
 int SDF_READABLE ;
 scalar_t__ STATUS_REG ;
 int a2150_ai_cmd ;
 int a2150_ai_cmdtest ;
 int a2150_ai_rinsn ;
 int a2150_alloc_irq_and_dma (struct comedi_device*,struct comedi_devconfig*) ;
 int a2150_cancel ;
 struct a2150_board* a2150_probe (struct comedi_device*) ;
 int comedi_8254_init (scalar_t__,int ,int ,int ) ;
 struct a2150_private* comedi_alloc_devpriv (struct comedi_device*,int) ;
 int comedi_alloc_subdevices (struct comedi_device*,int) ;
 int comedi_request_region (struct comedi_device*,int ,int) ;
 int dev_err (int ,char*) ;
 int inw (scalar_t__) ;
 int outw (int,scalar_t__) ;
 int outw_p (int,scalar_t__) ;
 int range_a2150 ;
 int usleep_range (int,int) ;

__attribute__((used)) static int a2150_attach(struct comedi_device *dev, struct comedi_devconfig *it)
{
 const struct a2150_board *board;
 struct a2150_private *devpriv;
 struct comedi_subdevice *s;
 static const int timeout = 2000;
 int i;
 int ret;

 devpriv = comedi_alloc_devpriv(dev, sizeof(*devpriv));
 if (!devpriv)
  return -ENOMEM;

 ret = comedi_request_region(dev, it->options[0], 0x1c);
 if (ret)
  return ret;

 board = a2150_probe(dev);
 if (!board)
  return -ENODEV;
 dev->board_ptr = board;
 dev->board_name = board->name;


 a2150_alloc_irq_and_dma(dev, it);

 dev->pacer = comedi_8254_init(dev->iobase + I8253_BASE_REG,
          0, I8254_IO8, 0);
 if (!dev->pacer)
  return -ENOMEM;

 ret = comedi_alloc_subdevices(dev, 1);
 if (ret)
  return ret;


 s = &dev->subdevices[0];
 s->type = COMEDI_SUBD_AI;
 s->subdev_flags = SDF_READABLE | SDF_GROUND | SDF_OTHER;
 s->n_chan = 4;
 s->maxdata = 0xffff;
 s->range_table = &range_a2150;
 s->insn_read = a2150_ai_rinsn;
 if (dev->irq) {
  dev->read_subdev = s;
  s->subdev_flags |= SDF_CMD_READ;
  s->len_chanlist = s->n_chan;
  s->do_cmd = a2150_ai_cmd;
  s->do_cmdtest = a2150_ai_cmdtest;
  s->cancel = a2150_cancel;
 }


 outw(devpriv->irq_dma_bits, dev->iobase + IRQ_DMA_CNTRL_REG);


 outw_p(DPD_BIT | APD_BIT, dev->iobase + CONFIG_REG);
 outw_p(DPD_BIT, dev->iobase + CONFIG_REG);

 devpriv->config_bits = 0;
 outw(devpriv->config_bits, dev->iobase + CONFIG_REG);

 for (i = 0; i < timeout; i++) {
  if ((DCAL_BIT & inw(dev->iobase + STATUS_REG)) == 0)
   break;
  usleep_range(1000, 3000);
 }
 if (i == timeout) {
  dev_err(dev->class_dev,
   "timed out waiting for offset calibration to complete\n");
  return -ETIME;
 }
 devpriv->config_bits |= ENABLE0_BIT | ENABLE1_BIT;
 outw(devpriv->config_bits, dev->iobase + CONFIG_REG);

 return 0;
}
