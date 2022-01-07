
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

__attribute__((used)) static int cb_pcidas_ao_check_chanlist(struct comedi_device *dev,
           struct comedi_subdevice *s,
           struct comedi_cmd *cmd)
{
 unsigned int chan0 = CR_CHAN(cmd->chanlist[0]);

 if (cmd->chanlist_len > 1) {
  unsigned int chan1 = CR_CHAN(cmd->chanlist[1]);

  if (chan0 != 0 || chan1 != 1) {
   dev_dbg(dev->class_dev,
    "channels must be ordered channel 0, channel 1 in chanlist\n");
   return -EINVAL;
  }
 }

 return 0;
}
