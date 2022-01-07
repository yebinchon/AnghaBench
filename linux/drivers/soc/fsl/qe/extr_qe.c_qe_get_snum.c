
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int find_first_zero_bit (int ,int) ;
 int qe_lock ;
 int qe_num_of_snum ;
 int set_bit (int,int ) ;
 int snum_state ;
 int* snums ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int qe_get_snum(void)
{
 unsigned long flags;
 int snum = -EBUSY;
 int i;

 spin_lock_irqsave(&qe_lock, flags);
 i = find_first_zero_bit(snum_state, qe_num_of_snum);
 if (i < qe_num_of_snum) {
  set_bit(i, snum_state);
  snum = snums[i];
 }
 spin_unlock_irqrestore(&qe_lock, flags);

 return snum;
}
