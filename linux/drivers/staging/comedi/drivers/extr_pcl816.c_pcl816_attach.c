
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcl816_private {int dummy; } ;
struct pcl816_board {int ai_maxdata; int ai_chanlist; } ;
struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; int insn_bits; int * range_table; int type; int cancel; int poll; int do_cmd; int do_cmdtest; int len_chanlist; int insn_read; } ;
struct comedi_device {struct comedi_subdevice* subdevices; struct comedi_subdevice* read_subdev; scalar_t__ irq; int pacer; scalar_t__ iobase; struct pcl816_board* board_ptr; } ;
struct comedi_devconfig {int * options; } ;


 int COMEDI_SUBD_AI ;
 int COMEDI_SUBD_DI ;
 int COMEDI_SUBD_DO ;
 int COMEDI_SUBD_UNUSED ;
 int ENOMEM ;
 int I8254_IO8 ;
 int I8254_OSC_BASE_10MHZ ;
 scalar_t__ PCL816_TIMER_BASE ;
 int SDF_CMD_READ ;
 int SDF_DIFF ;
 int SDF_READABLE ;
 int SDF_WRITABLE ;
 int comedi_8254_init (scalar_t__,int ,int ,int ) ;
 struct pcl816_private* comedi_alloc_devpriv (struct comedi_device*,int) ;
 int comedi_alloc_subdevices (struct comedi_device*,int) ;
 int comedi_request_region (struct comedi_device*,int ,int) ;
 int pcl816_ai_cancel ;
 int pcl816_ai_cmd ;
 int pcl816_ai_cmdtest ;
 int pcl816_ai_insn_read ;
 int pcl816_ai_poll ;
 int pcl816_alloc_irq_and_dma (struct comedi_device*,struct comedi_devconfig*) ;
 int pcl816_di_insn_bits ;
 int pcl816_do_insn_bits ;
 int pcl816_reset (struct comedi_device*) ;
 int range_digital ;
 int range_pcl816 ;

__attribute__((used)) static int pcl816_attach(struct comedi_device *dev, struct comedi_devconfig *it)
{
 const struct pcl816_board *board = dev->board_ptr;
 struct pcl816_private *devpriv;
 struct comedi_subdevice *s;
 int ret;

 devpriv = comedi_alloc_devpriv(dev, sizeof(*devpriv));
 if (!devpriv)
  return -ENOMEM;

 ret = comedi_request_region(dev, it->options[0], 0x10);
 if (ret)
  return ret;


 pcl816_alloc_irq_and_dma(dev, it);

 dev->pacer = comedi_8254_init(dev->iobase + PCL816_TIMER_BASE,
          I8254_OSC_BASE_10MHZ, I8254_IO8, 0);
 if (!dev->pacer)
  return -ENOMEM;

 ret = comedi_alloc_subdevices(dev, 4);
 if (ret)
  return ret;

 s = &dev->subdevices[0];
 s->type = COMEDI_SUBD_AI;
 s->subdev_flags = SDF_CMD_READ | SDF_DIFF;
 s->n_chan = 16;
 s->maxdata = board->ai_maxdata;
 s->range_table = &range_pcl816;
 s->insn_read = pcl816_ai_insn_read;
 if (dev->irq) {
  dev->read_subdev = s;
  s->subdev_flags |= SDF_CMD_READ;
  s->len_chanlist = board->ai_chanlist;
  s->do_cmdtest = pcl816_ai_cmdtest;
  s->do_cmd = pcl816_ai_cmd;
  s->poll = pcl816_ai_poll;
  s->cancel = pcl816_ai_cancel;
 }


 s = &dev->subdevices[1];
 s->type = COMEDI_SUBD_UNUSED;


 s = &dev->subdevices[2];
 s->type = COMEDI_SUBD_DI;
 s->subdev_flags = SDF_READABLE;
 s->n_chan = 16;
 s->maxdata = 1;
 s->range_table = &range_digital;
 s->insn_bits = pcl816_di_insn_bits;


 s = &dev->subdevices[3];
 s->type = COMEDI_SUBD_DO;
 s->subdev_flags = SDF_WRITABLE;
 s->n_chan = 16;
 s->maxdata = 1;
 s->range_table = &range_digital;
 s->insn_bits = pcl816_do_insn_bits;

 pcl816_reset(dev);

 return 0;
}
