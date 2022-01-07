
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ism_dev {int lock; TYPE_1__* sba; int smcd; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ e; scalar_t__* dmbe_mask; scalar_t__ s; int * dmb_bits; } ;


 int BITS_PER_BYTE ;
 int IRQ_HANDLED ;
 int ISM_DMB_BIT_OFFSET ;
 size_t ISM_DMB_WORD_OFFSET ;
 int barrier () ;
 int clear_bit_inv (unsigned long,unsigned long*) ;
 unsigned long find_next_bit_inv (unsigned long*,unsigned long,unsigned long) ;
 int ism_handle_event (struct ism_dev*) ;
 int smcd_handle_irq (int ,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t ism_handle_irq(int irq, void *data)
{
 struct ism_dev *ism = data;
 unsigned long bit, end;
 unsigned long *bv;

 bv = (void *) &ism->sba->dmb_bits[ISM_DMB_WORD_OFFSET];
 end = sizeof(ism->sba->dmb_bits) * BITS_PER_BYTE - ISM_DMB_BIT_OFFSET;

 spin_lock(&ism->lock);
 ism->sba->s = 0;
 barrier();
 for (bit = 0;;) {
  bit = find_next_bit_inv(bv, end, bit);
  if (bit >= end)
   break;

  clear_bit_inv(bit, bv);
  ism->sba->dmbe_mask[bit + ISM_DMB_BIT_OFFSET] = 0;
  barrier();
  smcd_handle_irq(ism->smcd, bit + ISM_DMB_BIT_OFFSET);
 }

 if (ism->sba->e) {
  ism->sba->e = 0;
  barrier();
  ism_handle_event(ism);
 }
 spin_unlock(&ism->lock);
 return IRQ_HANDLED;
}
