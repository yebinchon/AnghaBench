
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct pcidas64_private {scalar_t__ main_iobase; } ;
struct comedi_device {int class_dev; struct pcidas64_private* private; } ;
struct comedi_cmd {int chanlist_len; int * chanlist; } ;


 unsigned int CR_CHAN (int ) ;
 scalar_t__ DAC_SELECT_REG ;
 int dev_err (int ,char*) ;
 int writew (unsigned int,scalar_t__) ;

__attribute__((used)) static void set_dac_select_reg(struct comedi_device *dev,
          const struct comedi_cmd *cmd)
{
 struct pcidas64_private *devpriv = dev->private;
 u16 bits;
 unsigned int first_channel, last_channel;

 first_channel = CR_CHAN(cmd->chanlist[0]);
 last_channel = CR_CHAN(cmd->chanlist[cmd->chanlist_len - 1]);
 if (last_channel < first_channel)
  dev_err(dev->class_dev,
   "bug! last ao channel < first ao channel\n");

 bits = (first_channel & 0x7) | (last_channel & 0x7) << 3;

 writew(bits, devpriv->main_iobase + DAC_SELECT_REG);
}
