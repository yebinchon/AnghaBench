
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dio200_subdev_intr {unsigned int valid_isns; unsigned int enabled_isns; int ofs; } ;
struct dio200_board {scalar_t__ has_int_sce; } ;
struct comedi_subdevice {TYPE_1__* async; struct dio200_subdev_intr* private; } ;
struct comedi_device {struct dio200_board* board_ptr; } ;
struct comedi_cmd {unsigned int chanlist_len; int * chanlist; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;


 unsigned int CR_CHAN (int ) ;
 int dio200_write8 (struct comedi_device*,int ,unsigned int) ;

__attribute__((used)) static void dio200_start_intr(struct comedi_device *dev,
         struct comedi_subdevice *s)
{
 const struct dio200_board *board = dev->board_ptr;
 struct dio200_subdev_intr *subpriv = s->private;
 struct comedi_cmd *cmd = &s->async->cmd;
 unsigned int n;
 unsigned int isn_bits;


 isn_bits = 0;
 if (cmd->chanlist) {
  for (n = 0; n < cmd->chanlist_len; n++)
   isn_bits |= (1U << CR_CHAN(cmd->chanlist[n]));
 }
 isn_bits &= subpriv->valid_isns;

 subpriv->enabled_isns = isn_bits;
 if (board->has_int_sce)
  dio200_write8(dev, subpriv->ofs, isn_bits);
}
