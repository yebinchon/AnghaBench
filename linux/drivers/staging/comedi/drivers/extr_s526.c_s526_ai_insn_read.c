
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s526_private {unsigned int ai_ctrl; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; struct s526_private* private; } ;


 unsigned int CR_CHAN (int ) ;
 unsigned int S526_AI_CTRL_CONV (unsigned int) ;
 unsigned int S526_AI_CTRL_DELAY ;
 unsigned int S526_AI_CTRL_READ (unsigned int) ;
 scalar_t__ S526_AI_CTRL_REG ;
 unsigned int S526_AI_CTRL_START ;
 scalar_t__ S526_AI_REG ;
 int S526_INT_AI ;
 unsigned int comedi_offset_munge (struct comedi_subdevice*,unsigned int) ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 unsigned int inw (scalar_t__) ;
 int outw (unsigned int,scalar_t__) ;
 int s526_eoc ;

__attribute__((used)) static int s526_ai_insn_read(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn,
        unsigned int *data)
{
 struct s526_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int ctrl;
 unsigned int val;
 int ret;
 int i;

 ctrl = S526_AI_CTRL_CONV(chan) | S526_AI_CTRL_READ(chan) |
        S526_AI_CTRL_START;
 if (ctrl != devpriv->ai_ctrl) {




  devpriv->ai_ctrl = ctrl;
  ctrl |= S526_AI_CTRL_DELAY;
 }

 for (i = 0; i < insn->n; i++) {

  outw(ctrl, dev->iobase + S526_AI_CTRL_REG);
  ctrl &= ~S526_AI_CTRL_DELAY;


  ret = comedi_timeout(dev, s, insn, s526_eoc, S526_INT_AI);
  if (ret)
   return ret;

  val = inw(dev->iobase + S526_AI_REG);
  data[i] = comedi_offset_munge(s, val);
 }

 return insn->n;
}
