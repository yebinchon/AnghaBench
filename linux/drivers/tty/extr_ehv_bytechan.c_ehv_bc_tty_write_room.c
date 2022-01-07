
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct ehv_bc_data* driver_data; } ;
struct ehv_bc_data {int lock; int tail; int head; } ;


 int BUF_SIZE ;
 int CIRC_SPACE (int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ehv_bc_tty_write_room(struct tty_struct *ttys)
{
 struct ehv_bc_data *bc = ttys->driver_data;
 unsigned long flags;
 int count;

 spin_lock_irqsave(&bc->lock, flags);
 count = CIRC_SPACE(bc->head, bc->tail, BUF_SIZE);
 spin_unlock_irqrestore(&bc->lock, flags);

 return count;
}
