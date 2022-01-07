
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; int class_dev; } ;


 unsigned int APCI3501_AO_CTRL_BIPOLAR ;
 scalar_t__ APCI3501_AO_CTRL_STATUS_REG ;
 unsigned int APCI3501_AO_DATA_BIPOLAR ;
 unsigned int APCI3501_AO_DATA_CHAN (unsigned int) ;
 scalar_t__ APCI3501_AO_DATA_REG ;
 unsigned int APCI3501_AO_DATA_VAL (unsigned int) ;
 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 int EINVAL ;
 int apci3501_wait_for_dac (struct comedi_device*) ;
 int dev_err (int ,char*) ;
 int outl (unsigned int,scalar_t__) ;

__attribute__((used)) static int apci3501_ao_insn_write(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn,
      unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int range = CR_RANGE(insn->chanspec);
 unsigned int cfg = APCI3501_AO_DATA_CHAN(chan);
 int ret;
 int i;







 if (range) {
  outl(0, dev->iobase + APCI3501_AO_CTRL_STATUS_REG);
 } else {
  cfg |= APCI3501_AO_DATA_BIPOLAR;
  outl(APCI3501_AO_CTRL_BIPOLAR,
       dev->iobase + APCI3501_AO_CTRL_STATUS_REG);
 }

 for (i = 0; i < insn->n; i++) {
  unsigned int val = data[i];

  if (range == 1) {
   if (data[i] > 0x1fff) {
    dev_err(dev->class_dev,
     "Unipolar resolution is only 13-bits\n");
    return -EINVAL;
   }
  }

  ret = apci3501_wait_for_dac(dev);
  if (ret)
   return ret;

  outl(cfg | APCI3501_AO_DATA_VAL(val),
       dev->iobase + APCI3501_AO_DATA_REG);

  s->readback[chan] = val;
 }

 return insn->n;
}
