
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int n_chan; } ;
struct comedi_device {int class_dev; } ;
struct comedi_cmd {int chanlist_len; int * chanlist; } ;


 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 int EINVAL ;
 int dev_dbg (int ,char*) ;

__attribute__((used)) static int das16_ai_check_chanlist(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_cmd *cmd)
{
 unsigned int chan0 = CR_CHAN(cmd->chanlist[0]);
 unsigned int range0 = CR_RANGE(cmd->chanlist[0]);
 int i;

 for (i = 1; i < cmd->chanlist_len; i++) {
  unsigned int chan = CR_CHAN(cmd->chanlist[i]);
  unsigned int range = CR_RANGE(cmd->chanlist[i]);

  if (chan != ((chan0 + i) % s->n_chan)) {
   dev_dbg(dev->class_dev,
    "entries in chanlist must be consecutive channels, counting upwards\n");
   return -EINVAL;
  }

  if (range != range0) {
   dev_dbg(dev->class_dev,
    "entries in chanlist must all have the same gain\n");
   return -EINVAL;
  }
 }

 return 0;
}
