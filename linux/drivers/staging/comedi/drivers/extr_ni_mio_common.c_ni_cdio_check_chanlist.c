
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int chanlist_len; int * chanlist; } ;


 unsigned int CR_CHAN (int ) ;
 int EINVAL ;

__attribute__((used)) static int ni_cdio_check_chanlist(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_cmd *cmd)
{
 int i;

 for (i = 0; i < cmd->chanlist_len; ++i) {
  unsigned int chan = CR_CHAN(cmd->chanlist[i]);

  if (chan != i)
   return -EINVAL;
 }

 return 0;
}
