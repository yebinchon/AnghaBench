
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct ehv_bc_data* driver_data; } ;
struct ehv_bc_data {unsigned int head; int lock; scalar_t__ buf; int tail; } ;


 int BUF_SIZE ;
 unsigned int CIRC_SPACE_TO_END (unsigned int,int ,int) ;
 int ehv_bc_tx_dequeue (struct ehv_bc_data*) ;
 int memcpy (scalar_t__,unsigned char const*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ehv_bc_tty_write(struct tty_struct *ttys, const unsigned char *s,
       int count)
{
 struct ehv_bc_data *bc = ttys->driver_data;
 unsigned long flags;
 unsigned int len;
 unsigned int written = 0;

 while (1) {
  spin_lock_irqsave(&bc->lock, flags);
  len = CIRC_SPACE_TO_END(bc->head, bc->tail, BUF_SIZE);
  if (count < len)
   len = count;
  if (len) {
   memcpy(bc->buf + bc->head, s, len);
   bc->head = (bc->head + len) & (BUF_SIZE - 1);
  }
  spin_unlock_irqrestore(&bc->lock, flags);
  if (!len)
   break;

  s += len;
  count -= len;
  written += len;
 }

 ehv_bc_tx_dequeue(bc);

 return written;
}
