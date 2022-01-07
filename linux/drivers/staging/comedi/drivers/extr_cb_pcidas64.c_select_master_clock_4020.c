
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chanspec; } ;
struct pcidas64_private {scalar_t__ main_iobase; int hw_config_bits; TYPE_1__ ext_clock; } ;
struct comedi_device {struct pcidas64_private* private; } ;
struct comedi_cmd {scalar_t__ scan_begin_src; } ;


 int BNC_CLOCK_4020_BITS ;
 scalar_t__ CR_CHAN (int) ;
 int EXT_CLOCK_4020_BITS ;
 scalar_t__ HW_CONFIG_REG ;
 int INTERNAL_CLOCK_4020_BITS ;
 int MASTER_CLOCK_4020_MASK ;
 scalar_t__ TRIG_OTHER ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static void select_master_clock_4020(struct comedi_device *dev,
         const struct comedi_cmd *cmd)
{
 struct pcidas64_private *devpriv = dev->private;


 devpriv->hw_config_bits &= ~MASTER_CLOCK_4020_MASK;
 if (cmd->scan_begin_src == TRIG_OTHER) {
  int chanspec = devpriv->ext_clock.chanspec;

  if (CR_CHAN(chanspec))
   devpriv->hw_config_bits |= BNC_CLOCK_4020_BITS;
  else
   devpriv->hw_config_bits |= EXT_CLOCK_4020_BITS;
 } else {
  devpriv->hw_config_bits |= INTERNAL_CLOCK_4020_BITS;
 }
 writew(devpriv->hw_config_bits,
        devpriv->main_iobase + HW_CONFIG_REG);
}
