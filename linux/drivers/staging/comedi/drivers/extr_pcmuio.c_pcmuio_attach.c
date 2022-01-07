
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmuio_private {scalar_t__ irq2; struct pcmuio_asic* asics; } ;
struct pcmuio_board {int num_asics; } ;
struct pcmuio_asic {int spinlock; int pagelock; } ;
struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; int len_chanlist; int do_cmdtest; int do_cmd; int cancel; int insn_config; int insn_bits; int * range_table; int type; } ;
struct comedi_device {scalar_t__ irq; int n_subdevices; struct comedi_subdevice* read_subdev; struct comedi_subdevice* subdevices; int board_name; struct pcmuio_board* board_ptr; } ;
struct comedi_devconfig {scalar_t__* options; } ;


 int COMEDI_SUBD_DIO ;
 int ENOMEM ;
 int PCMUIO_ASIC_IOSIZE ;
 int PCMUIO_MAX_ASICS ;
 int SDF_CMD_READ ;
 int SDF_LSAMPL ;
 int SDF_PACKED ;
 int SDF_READABLE ;
 int SDF_WRITABLE ;
 struct pcmuio_private* comedi_alloc_devpriv (struct comedi_device*,int) ;
 int comedi_alloc_subdevices (struct comedi_device*,int) ;
 int comedi_request_region (struct comedi_device*,scalar_t__,int) ;
 int pcmuio_cancel ;
 int pcmuio_cmd ;
 int pcmuio_cmdtest ;
 int pcmuio_dio_insn_bits ;
 int pcmuio_dio_insn_config ;
 int pcmuio_interrupt ;
 int pcmuio_reset (struct comedi_device*) ;
 int range_digital ;
 int request_irq (scalar_t__,int ,int ,int ,struct comedi_device*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int pcmuio_attach(struct comedi_device *dev, struct comedi_devconfig *it)
{
 const struct pcmuio_board *board = dev->board_ptr;
 struct comedi_subdevice *s;
 struct pcmuio_private *devpriv;
 int ret;
 int i;

 ret = comedi_request_region(dev, it->options[0],
        board->num_asics * PCMUIO_ASIC_IOSIZE);
 if (ret)
  return ret;

 devpriv = comedi_alloc_devpriv(dev, sizeof(*devpriv));
 if (!devpriv)
  return -ENOMEM;

 for (i = 0; i < PCMUIO_MAX_ASICS; ++i) {
  struct pcmuio_asic *chip = &devpriv->asics[i];

  spin_lock_init(&chip->pagelock);
  spin_lock_init(&chip->spinlock);
 }

 pcmuio_reset(dev);

 if (it->options[1]) {

  ret = request_irq(it->options[1], pcmuio_interrupt, 0,
      dev->board_name, dev);
  if (ret == 0)
   dev->irq = it->options[1];
 }

 if (board->num_asics == 2) {
  if (it->options[2] == dev->irq) {

   devpriv->irq2 = it->options[2];
  } else if (it->options[2]) {

   ret = request_irq(it->options[2], pcmuio_interrupt, 0,
       dev->board_name, dev);
   if (ret == 0)
    devpriv->irq2 = it->options[2];
  }
 }

 ret = comedi_alloc_subdevices(dev, board->num_asics * 2);
 if (ret)
  return ret;

 for (i = 0; i < dev->n_subdevices; ++i) {
  s = &dev->subdevices[i];
  s->type = COMEDI_SUBD_DIO;
  s->subdev_flags = SDF_READABLE | SDF_WRITABLE;
  s->n_chan = 24;
  s->maxdata = 1;
  s->range_table = &range_digital;
  s->insn_bits = pcmuio_dio_insn_bits;
  s->insn_config = pcmuio_dio_insn_config;


  if ((i == 0 && dev->irq) || (i == 2 && devpriv->irq2)) {

   dev->read_subdev = s;
   s->subdev_flags |= SDF_CMD_READ | SDF_LSAMPL |
        SDF_PACKED;
   s->len_chanlist = s->n_chan;
   s->cancel = pcmuio_cancel;
   s->do_cmd = pcmuio_cmd;
   s->do_cmdtest = pcmuio_cmdtest;
  }
 }

 return 0;
}
