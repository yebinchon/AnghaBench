
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct das800_board {int name; } ;
struct comedi_device {int class_dev; int spinlock; struct das800_board* board_ptr; } ;


 int BOARD_CIODAS800 ;
 int BOARD_CIODAS801 ;
 int BOARD_CIODAS802 ;
 int BOARD_CIODAS80216 ;
 int BOARD_DAS800 ;
 int BOARD_DAS801 ;
 int BOARD_DAS802 ;
 int EINVAL ;
 int ID ;
 struct das800_board const* das800_boards ;
 int das800_ind_read (struct comedi_device*,int ) ;
 int dev_dbg (int ,char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static const struct das800_board *das800_probe(struct comedi_device *dev)
{
 const struct das800_board *board = dev->board_ptr;
 int index = board ? board - das800_boards : -EINVAL;
 int id_bits;
 unsigned long irq_flags;
 spin_lock_irqsave(&dev->spinlock, irq_flags);
 id_bits = das800_ind_read(dev, ID) & 0x3;
 spin_unlock_irqrestore(&dev->spinlock, irq_flags);

 switch (id_bits) {
 case 0x0:
  if (index == BOARD_DAS800 || index == BOARD_CIODAS800)
   return board;
  index = BOARD_DAS800;
  break;
 case 0x2:
  if (index == BOARD_DAS801 || index == BOARD_CIODAS801)
   return board;
  index = BOARD_DAS801;
  break;
 case 0x3:
  if (index == BOARD_DAS802 || index == BOARD_CIODAS802 ||
      index == BOARD_CIODAS80216)
   return board;
  index = BOARD_DAS802;
  break;
 default:
  dev_dbg(dev->class_dev, "Board model: 0x%x (unknown)\n",
   id_bits);
  return ((void*)0);
 }
 dev_dbg(dev->class_dev, "Board model (probed): %s series\n",
  das800_boards[index].name);

 return &das800_boards[index];
}
