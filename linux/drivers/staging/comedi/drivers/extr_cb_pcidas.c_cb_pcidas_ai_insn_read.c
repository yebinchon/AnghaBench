
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int chanspec; int n; } ;
struct comedi_device {struct cb_pcidas_private* private; } ;
struct cb_pcidas_private {scalar_t__ pcibar2; scalar_t__ pcibar1; int calib_src; } ;


 unsigned int AREF_DIFF ;
 int CR_ALT_SOURCE ;
 unsigned int CR_AREF (int) ;
 unsigned int CR_CHAN (int) ;
 unsigned int CR_RANGE (int) ;
 unsigned int PCIDAS_AI_CHAN (unsigned int) ;
 scalar_t__ PCIDAS_AI_DATA_REG ;
 scalar_t__ PCIDAS_AI_FIFO_CLR_REG ;
 unsigned int PCIDAS_AI_GAIN (unsigned int) ;
 scalar_t__ PCIDAS_AI_REG ;
 unsigned int PCIDAS_AI_SE ;
 unsigned int PCIDAS_AI_UNIP ;
 unsigned int PCIDAS_CALIB_EN ;
 scalar_t__ PCIDAS_CALIB_REG ;
 unsigned int PCIDAS_CALIB_SRC (int ) ;
 int cb_pcidas_ai_eoc ;
 scalar_t__ comedi_range_is_unipolar (struct comedi_subdevice*,unsigned int) ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 unsigned int inw (scalar_t__) ;
 int outw (unsigned int,scalar_t__) ;

__attribute__((used)) static int cb_pcidas_ai_insn_read(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn,
      unsigned int *data)
{
 struct cb_pcidas_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int range = CR_RANGE(insn->chanspec);
 unsigned int aref = CR_AREF(insn->chanspec);
 unsigned int bits;
 int ret;
 int n;


 if (insn->chanspec & CR_ALT_SOURCE) {
  outw(PCIDAS_CALIB_EN | PCIDAS_CALIB_SRC(devpriv->calib_src),
       devpriv->pcibar1 + PCIDAS_CALIB_REG);
  chan = 0;
 } else {
  outw(0, devpriv->pcibar1 + PCIDAS_CALIB_REG);
 }


 bits = PCIDAS_AI_CHAN(chan) | PCIDAS_AI_GAIN(range);

 if (comedi_range_is_unipolar(s, range))
  bits |= PCIDAS_AI_UNIP;

 if (aref != AREF_DIFF)
  bits |= PCIDAS_AI_SE;
 outw(bits, devpriv->pcibar1 + PCIDAS_AI_REG);


 outw(0, devpriv->pcibar2 + PCIDAS_AI_FIFO_CLR_REG);


 for (n = 0; n < insn->n; n++) {

  outw(0, devpriv->pcibar2 + PCIDAS_AI_DATA_REG);


  ret = comedi_timeout(dev, s, insn, cb_pcidas_ai_eoc, 0);
  if (ret)
   return ret;


  data[n] = inw(devpriv->pcibar2 + PCIDAS_AI_DATA_REG);
 }


 return n;
}
