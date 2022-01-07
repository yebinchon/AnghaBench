
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int class_dev; } ;
struct comedi_cmd {int chanlist_len; int * chanlist; } ;
typedef enum scan_mode { ____Placeholder_scan_mode } scan_mode ;


 unsigned int CR_AREF (int ) ;
 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 int EINVAL ;




 int dev_dbg (int ,char*) ;
 int labpc_ai_scan_mode (struct comedi_cmd*) ;

__attribute__((used)) static int labpc_ai_check_chanlist(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_cmd *cmd)
{
 enum scan_mode mode = labpc_ai_scan_mode(cmd);
 unsigned int chan0 = CR_CHAN(cmd->chanlist[0]);
 unsigned int range0 = CR_RANGE(cmd->chanlist[0]);
 unsigned int aref0 = CR_AREF(cmd->chanlist[0]);
 int i;

 for (i = 0; i < cmd->chanlist_len; i++) {
  unsigned int chan = CR_CHAN(cmd->chanlist[i]);
  unsigned int range = CR_RANGE(cmd->chanlist[i]);
  unsigned int aref = CR_AREF(cmd->chanlist[i]);

  switch (mode) {
  case 129:
   break;
  case 128:
   if (chan != chan0) {
    dev_dbg(dev->class_dev,
     "channel scanning order specified in chanlist is not supported by hardware\n");
    return -EINVAL;
   }
   break;
  case 130:
   if (chan != i) {
    dev_dbg(dev->class_dev,
     "channel scanning order specified in chanlist is not supported by hardware\n");
    return -EINVAL;
   }
   break;
  case 131:
   if (chan != (cmd->chanlist_len - i - 1)) {
    dev_dbg(dev->class_dev,
     "channel scanning order specified in chanlist is not supported by hardware\n");
    return -EINVAL;
   }
   break;
  }

  if (range != range0) {
   dev_dbg(dev->class_dev,
    "entries in chanlist must all have the same range\n");
   return -EINVAL;
  }

  if (aref != aref0) {
   dev_dbg(dev->class_dev,
    "entries in chanlist must all have the same reference\n");
   return -EINVAL;
  }
 }

 return 0;
}
