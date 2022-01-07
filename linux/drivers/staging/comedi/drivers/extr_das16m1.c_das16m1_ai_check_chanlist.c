
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int class_dev; } ;
struct comedi_cmd {int chanlist_len; int * chanlist; } ;


 unsigned int CR_CHAN (int ) ;
 int EINVAL ;
 int dev_dbg (int ,char*) ;

__attribute__((used)) static int das16m1_ai_check_chanlist(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_cmd *cmd)
{
 int i;

 if (cmd->chanlist_len == 1)
  return 0;

 if ((cmd->chanlist_len % 2) != 0) {
  dev_dbg(dev->class_dev,
   "chanlist must be of even length or length 1\n");
  return -EINVAL;
 }

 for (i = 0; i < cmd->chanlist_len; i++) {
  unsigned int chan = CR_CHAN(cmd->chanlist[i]);

  if ((i % 2) != (chan % 2)) {
   dev_dbg(dev->class_dev,
    "even/odd channels must go have even/odd chanlist indices\n");
   return -EINVAL;
  }
 }

 return 0;
}
