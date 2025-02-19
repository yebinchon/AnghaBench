
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcidas64_board {scalar_t__ layout; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int class_dev; struct pcidas64_board* board_ptr; } ;
struct comedi_cmd {int chanlist_len; int * chanlist; } ;


 unsigned int CR_AREF (int ) ;
 unsigned int CR_CHAN (int ) ;
 int EINVAL ;
 scalar_t__ LAYOUT_4020 ;
 int dev_dbg (int ,char*) ;

__attribute__((used)) static int cb_pcidas64_ai_check_chanlist(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_cmd *cmd)
{
 const struct pcidas64_board *board = dev->board_ptr;
 unsigned int aref0 = CR_AREF(cmd->chanlist[0]);
 int i;

 for (i = 1; i < cmd->chanlist_len; i++) {
  unsigned int aref = CR_AREF(cmd->chanlist[i]);

  if (aref != aref0) {
   dev_dbg(dev->class_dev,
    "all elements in chanlist must use the same analog reference\n");
   return -EINVAL;
  }
 }

 if (board->layout == LAYOUT_4020) {
  unsigned int chan0 = CR_CHAN(cmd->chanlist[0]);

  for (i = 1; i < cmd->chanlist_len; i++) {
   unsigned int chan = CR_CHAN(cmd->chanlist[i]);

   if (chan != (chan0 + i)) {
    dev_dbg(dev->class_dev,
     "chanlist must use consecutive channels\n");
    return -EINVAL;
   }
  }
  if (cmd->chanlist_len == 3) {
   dev_dbg(dev->class_dev,
    "chanlist cannot be 3 channels long, use 1, 2, or 4 channels\n");
   return -EINVAL;
  }
 }

 return 0;
}
