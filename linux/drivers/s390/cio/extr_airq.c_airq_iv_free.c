
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airq_iv {unsigned long end; int lock; int avail; int vector; } ;


 int clear_bit_inv (unsigned long,int ) ;
 int set_bit_inv (unsigned long,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit_inv (int,int ) ;

void airq_iv_free(struct airq_iv *iv, unsigned long bit, unsigned long num)
{
 unsigned long i, flags;

 if (!iv->avail || num == 0)
  return;
 spin_lock_irqsave(&iv->lock, flags);
 for (i = 0; i < num; i++) {

  clear_bit_inv(bit + i, iv->vector);

  set_bit_inv(bit + i, iv->avail);
 }
 if (bit + num >= iv->end) {

  while (iv->end > 0 && !test_bit_inv(iv->end - 1, iv->avail))
   iv->end--;
 }
 spin_unlock_irqrestore(&iv->lock, flags);
}
