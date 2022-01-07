
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio200_subdev_intr {int active; int ofs; scalar_t__ enabled_isns; } ;
struct dio200_board {scalar_t__ has_int_sce; } ;
struct comedi_subdevice {struct dio200_subdev_intr* private; } ;
struct comedi_device {struct dio200_board* board_ptr; } ;


 int dio200_write8 (struct comedi_device*,int ,int ) ;

__attribute__((used)) static void dio200_stop_intr(struct comedi_device *dev,
        struct comedi_subdevice *s)
{
 const struct dio200_board *board = dev->board_ptr;
 struct dio200_subdev_intr *subpriv = s->private;

 subpriv->active = 0;
 subpriv->enabled_isns = 0;
 if (board->has_int_sce)
  dio200_write8(dev, subpriv->ofs, 0);
}
