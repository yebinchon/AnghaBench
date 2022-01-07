
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airq_iv {unsigned long bits; unsigned long end; int lock; int avail; } ;


 int clear_bit_inv (unsigned long,int ) ;
 unsigned long find_first_bit_inv (int ,unsigned long) ;
 unsigned long find_next_bit_inv (int ,unsigned long,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit_inv (unsigned long,int ) ;

unsigned long airq_iv_alloc(struct airq_iv *iv, unsigned long num)
{
 unsigned long bit, i, flags;

 if (!iv->avail || num == 0)
  return -1UL;
 spin_lock_irqsave(&iv->lock, flags);
 bit = find_first_bit_inv(iv->avail, iv->bits);
 while (bit + num <= iv->bits) {
  for (i = 1; i < num; i++)
   if (!test_bit_inv(bit + i, iv->avail))
    break;
  if (i >= num) {

   for (i = 0; i < num; i++)
    clear_bit_inv(bit + i, iv->avail);
   if (bit + num >= iv->end)
    iv->end = bit + num + 1;
   break;
  }
  bit = find_next_bit_inv(iv->avail, iv->bits, bit + i + 1);
 }
 if (bit + num > iv->bits)
  bit = -1UL;
 spin_unlock_irqrestore(&iv->lock, flags);
 return bit;
}
