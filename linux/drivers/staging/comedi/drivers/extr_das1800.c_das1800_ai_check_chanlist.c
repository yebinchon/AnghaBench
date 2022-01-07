
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int class_dev; } ;
struct comedi_cmd {int chanlist_len; int * chanlist; } ;


 unsigned int CR_RANGE (int ) ;
 int EINVAL ;
 int comedi_range_is_unipolar (struct comedi_subdevice*,unsigned int) ;
 int dev_dbg (int ,char*) ;

__attribute__((used)) static int das1800_ai_check_chanlist(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_cmd *cmd)
{
 unsigned int range = CR_RANGE(cmd->chanlist[0]);
 bool unipolar0 = comedi_range_is_unipolar(s, range);
 int i;

 for (i = 1; i < cmd->chanlist_len; i++) {
  range = CR_RANGE(cmd->chanlist[i]);

  if (unipolar0 != comedi_range_is_unipolar(s, range)) {
   dev_dbg(dev->class_dev,
    "unipolar and bipolar ranges cannot be mixed in the chanlist\n");
   return -EINVAL;
  }
 }

 return 0;
}
