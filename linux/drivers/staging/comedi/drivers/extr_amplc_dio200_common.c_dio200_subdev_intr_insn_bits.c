
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio200_subdev_intr {unsigned int valid_isns; int ofs; } ;
struct dio200_board {scalar_t__ has_int_sce; } ;
struct comedi_subdevice {struct dio200_subdev_intr* private; } ;
struct comedi_insn {int n; } ;
struct comedi_device {struct dio200_board* board_ptr; } ;


 unsigned int dio200_read8 (struct comedi_device*,int ) ;

__attribute__((used)) static int dio200_subdev_intr_insn_bits(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn,
     unsigned int *data)
{
 const struct dio200_board *board = dev->board_ptr;
 struct dio200_subdev_intr *subpriv = s->private;

 if (board->has_int_sce) {

  data[1] = dio200_read8(dev, subpriv->ofs) & subpriv->valid_isns;
 } else {

  data[0] = 0;
 }

 return insn->n;
}
