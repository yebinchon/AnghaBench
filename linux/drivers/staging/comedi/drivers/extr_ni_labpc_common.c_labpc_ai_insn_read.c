
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct labpc_private {int cmd4; int (* write_byte ) (struct comedi_device*,int,int ) ;int counter; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {struct labpc_private* private; } ;


 int ADC_START_CONVERT_REG ;
 unsigned int AREF_DIFF ;
 int CMD4_ECLKRCV ;
 int CMD4_REG ;
 int CMD4_SEDIFF ;
 unsigned int CR_AREF (int ) ;
 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 int I8254_BINARY ;
 int I8254_MODE2 ;
 int MODE_SINGLE_CHAN ;
 int comedi_8254_set_mode (int ,int ,int) ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 int fifo_not_empty_transfer ;
 int labpc_ai_eoc ;
 int labpc_ai_set_chan_and_gain (struct comedi_device*,int ,unsigned int,unsigned int,unsigned int) ;
 int labpc_cancel (struct comedi_device*,struct comedi_subdevice*) ;
 int labpc_clear_adc_fifo (struct comedi_device*) ;
 unsigned int labpc_read_adc_fifo (struct comedi_device*) ;
 int labpc_setup_cmd6_reg (struct comedi_device*,struct comedi_subdevice*,int ,int ,unsigned int,unsigned int,int) ;
 int stub1 (struct comedi_device*,int,int ) ;
 int stub2 (struct comedi_device*,int,int ) ;

__attribute__((used)) static int labpc_ai_insn_read(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 struct labpc_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int range = CR_RANGE(insn->chanspec);
 unsigned int aref = CR_AREF(insn->chanspec);
 int ret;
 int i;


 labpc_cancel(dev, s);

 labpc_ai_set_chan_and_gain(dev, MODE_SINGLE_CHAN, chan, range, aref);

 labpc_setup_cmd6_reg(dev, s, MODE_SINGLE_CHAN, fifo_not_empty_transfer,
        range, aref, 0);


 devpriv->cmd4 = 0;
 devpriv->cmd4 |= CMD4_ECLKRCV;

 if (aref == AREF_DIFF)
  devpriv->cmd4 |= CMD4_SEDIFF;
 devpriv->write_byte(dev, devpriv->cmd4, CMD4_REG);


 comedi_8254_set_mode(devpriv->counter, 0, I8254_MODE2 | I8254_BINARY);

 labpc_clear_adc_fifo(dev);

 for (i = 0; i < insn->n; i++) {

  devpriv->write_byte(dev, 0x1, ADC_START_CONVERT_REG);

  ret = comedi_timeout(dev, s, insn, labpc_ai_eoc, 0);
  if (ret)
   return ret;

  data[i] = labpc_read_adc_fifo(dev);
 }

 return insn->n;
}
