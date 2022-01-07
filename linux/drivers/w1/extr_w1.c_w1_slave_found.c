
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
struct w1_slave {int flags; } ;
struct w1_reg_num {scalar_t__ crc; } ;
struct w1_master {int refcnt; } ;


 int W1_SLAVE_ACTIVE ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ cpu_to_le64 (scalar_t__) ;
 int set_bit (int ,int *) ;
 int w1_attach_slave_device (struct w1_master*,struct w1_reg_num*) ;
 scalar_t__ w1_calc_crc8 (int *,int) ;
 struct w1_slave* w1_slave_search_device (struct w1_master*,struct w1_reg_num*) ;

void w1_slave_found(struct w1_master *dev, u64 rn)
{
 struct w1_slave *sl;
 struct w1_reg_num *tmp;
 u64 rn_le = cpu_to_le64(rn);

 atomic_inc(&dev->refcnt);

 tmp = (struct w1_reg_num *) &rn;

 sl = w1_slave_search_device(dev, tmp);
 if (sl) {
  set_bit(W1_SLAVE_ACTIVE, &sl->flags);
 } else {
  if (rn && tmp->crc == w1_calc_crc8((u8 *)&rn_le, 7))
   w1_attach_slave_device(dev, tmp);
 }

 atomic_dec(&dev->refcnt);
}
