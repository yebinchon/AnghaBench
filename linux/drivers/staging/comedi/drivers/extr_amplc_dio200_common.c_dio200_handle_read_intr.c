
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio200_subdev_intr {unsigned int enabled_isns; unsigned int valid_isns; int spinlock; scalar_t__ active; int ofs; } ;
struct dio200_board {scalar_t__ has_int_sce; } ;
struct comedi_subdevice {struct dio200_subdev_intr* private; } ;
struct comedi_device {struct dio200_board* board_ptr; } ;


 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 unsigned int dio200_read8 (struct comedi_device*,int ) ;
 int dio200_read_scan_intr (struct comedi_device*,struct comedi_subdevice*,unsigned int) ;
 int dio200_write8 (struct comedi_device*,int ,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dio200_handle_read_intr(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 const struct dio200_board *board = dev->board_ptr;
 struct dio200_subdev_intr *subpriv = s->private;
 unsigned int triggered;
 unsigned int intstat;
 unsigned int cur_enabled;
 unsigned long flags;

 triggered = 0;

 spin_lock_irqsave(&subpriv->spinlock, flags);
 if (board->has_int_sce) {
  cur_enabled = subpriv->enabled_isns;
  while ((intstat = (dio200_read8(dev, subpriv->ofs) &
       subpriv->valid_isns & ~triggered)) != 0) {
   triggered |= intstat;
   cur_enabled &= ~triggered;
   dio200_write8(dev, subpriv->ofs, cur_enabled);
  }
 } else {




  triggered = subpriv->enabled_isns;
 }

 if (triggered) {






  cur_enabled = subpriv->enabled_isns;
  if (board->has_int_sce)
   dio200_write8(dev, subpriv->ofs, cur_enabled);

  if (subpriv->active) {







   if (triggered & subpriv->enabled_isns) {

    dio200_read_scan_intr(dev, s, triggered);
   }
  }
 }
 spin_unlock_irqrestore(&subpriv->spinlock, flags);

 comedi_handle_events(dev, s);

 return (triggered != 0);
}
