
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcidas64_private {scalar_t__ main_iobase; int dac_control1_bits; } ;
struct comedi_device {struct pcidas64_private* private; } ;
struct comedi_cmd {int chanlist_len; int * chanlist; } ;


 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 scalar_t__ DAC_CONTROL1_REG ;
 int DAC_SW_GATE_BIT ;
 int set_dac_range_bits (struct comedi_device*,int *,int,int) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static void set_dac_control1_reg(struct comedi_device *dev,
     const struct comedi_cmd *cmd)
{
 struct pcidas64_private *devpriv = dev->private;
 int i;

 for (i = 0; i < cmd->chanlist_len; i++) {
  int channel, range;

  channel = CR_CHAN(cmd->chanlist[i]);
  range = CR_RANGE(cmd->chanlist[i]);
  set_dac_range_bits(dev, &devpriv->dac_control1_bits, channel,
       range);
 }
 devpriv->dac_control1_bits |= DAC_SW_GATE_BIT;
 writew(devpriv->dac_control1_bits,
        devpriv->main_iobase + DAC_CONTROL1_REG);
}
