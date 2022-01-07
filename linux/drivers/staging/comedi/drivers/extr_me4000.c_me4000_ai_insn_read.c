
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int subdev_flags; int n_chan; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; int class_dev; } ;


 unsigned int AREF_DIFF ;
 unsigned int CR_AREF (int ) ;
 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 int EINVAL ;
 scalar_t__ ME4000_AI_CHANNEL_LIST_REG ;
 scalar_t__ ME4000_AI_CHAN_PRE_TIMER_REG ;
 scalar_t__ ME4000_AI_CHAN_TIMER_REG ;
 unsigned int ME4000_AI_CTRL_CHANNEL_FIFO ;
 unsigned int ME4000_AI_CTRL_DATA_FIFO ;
 scalar_t__ ME4000_AI_CTRL_REG ;
 unsigned int ME4000_AI_LIST_INPUT_DIFFERENTIAL ;
 unsigned int ME4000_AI_LIST_LAST_ENTRY ;
 unsigned int ME4000_AI_LIST_RANGE (unsigned int) ;
 unsigned int ME4000_AI_MIN_TICKS ;
 scalar_t__ ME4000_AI_START_REG ;
 int SDF_DIFF ;
 unsigned int comedi_offset_munge (struct comedi_subdevice*,unsigned int) ;
 int comedi_range_is_bipolar (struct comedi_subdevice*,unsigned int) ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 int dev_err (int ,char*) ;
 int inl (scalar_t__) ;
 int me4000_ai_eoc ;
 unsigned int me4000_ai_get_sample (struct comedi_device*,struct comedi_subdevice*) ;
 int me4000_ai_reset (struct comedi_device*) ;
 int outl (unsigned int,scalar_t__) ;

__attribute__((used)) static int me4000_ai_insn_read(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int range = CR_RANGE(insn->chanspec);
 unsigned int aref = CR_AREF(insn->chanspec);
 unsigned int entry;
 int ret = 0;
 int i;

 entry = chan | ME4000_AI_LIST_RANGE(range);
 if (aref == AREF_DIFF) {
  if (!(s->subdev_flags & SDF_DIFF)) {
   dev_err(dev->class_dev,
    "Differential inputs are not available\n");
   return -EINVAL;
  }

  if (!comedi_range_is_bipolar(s, range)) {
   dev_err(dev->class_dev,
    "Range must be bipolar when aref = diff\n");
   return -EINVAL;
  }

  if (chan >= (s->n_chan / 2)) {
   dev_err(dev->class_dev,
    "Analog input is not available\n");
   return -EINVAL;
  }
  entry |= ME4000_AI_LIST_INPUT_DIFFERENTIAL;
 }

 entry |= ME4000_AI_LIST_LAST_ENTRY;


 outl(ME4000_AI_CTRL_CHANNEL_FIFO | ME4000_AI_CTRL_DATA_FIFO,
      dev->iobase + ME4000_AI_CTRL_REG);


 outl(entry, dev->iobase + ME4000_AI_CHANNEL_LIST_REG);


 outl(ME4000_AI_MIN_TICKS, dev->iobase + ME4000_AI_CHAN_TIMER_REG);
 outl(ME4000_AI_MIN_TICKS, dev->iobase + ME4000_AI_CHAN_PRE_TIMER_REG);

 for (i = 0; i < insn->n; i++) {
  unsigned int val;


  inl(dev->iobase + ME4000_AI_START_REG);

  ret = comedi_timeout(dev, s, insn, me4000_ai_eoc, 0);
  if (ret)
   break;

  val = me4000_ai_get_sample(dev, s);
  data[i] = comedi_offset_munge(s, val);
 }

 me4000_ai_reset(dev);

 return ret ? ret : insn->n;
}
