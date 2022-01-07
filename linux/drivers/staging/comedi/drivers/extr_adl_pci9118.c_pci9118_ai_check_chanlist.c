
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci9118_private {int usemux; } ;
struct comedi_subdevice {int n_chan; } ;
struct comedi_device {int class_dev; struct pci9118_private* private; } ;
struct comedi_cmd {int chanlist_len; int * chanlist; } ;


 unsigned int AREF_DIFF ;
 unsigned int CR_AREF (int ) ;
 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 int EINVAL ;
 scalar_t__ comedi_range_is_bipolar (struct comedi_subdevice*,unsigned int) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int pci9118_ai_check_chanlist(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_cmd *cmd)
{
 struct pci9118_private *devpriv = dev->private;
 unsigned int range0 = CR_RANGE(cmd->chanlist[0]);
 unsigned int aref0 = CR_AREF(cmd->chanlist[0]);
 int i;


 if (cmd->chanlist_len == 1)
  return 0;

 for (i = 1; i < cmd->chanlist_len; i++) {
  unsigned int chan = CR_CHAN(cmd->chanlist[i]);
  unsigned int range = CR_RANGE(cmd->chanlist[i]);
  unsigned int aref = CR_AREF(cmd->chanlist[i]);

  if (aref != aref0) {
   dev_err(dev->class_dev,
    "Differential and single ended inputs can't be mixed!\n");
   return -EINVAL;
  }
  if (comedi_range_is_bipolar(s, range) !=
      comedi_range_is_bipolar(s, range0)) {
   dev_err(dev->class_dev,
    "Bipolar and unipolar ranges can't be mixed!\n");
   return -EINVAL;
  }
  if (!devpriv->usemux && aref == AREF_DIFF &&
      (chan >= (s->n_chan / 2))) {
   dev_err(dev->class_dev,
    "AREF_DIFF is only available for the first 8 channels!\n");
   return -EINVAL;
  }
 }

 return 0;
}
