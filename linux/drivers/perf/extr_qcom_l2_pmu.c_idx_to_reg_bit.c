
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ BIT (scalar_t__) ;
 scalar_t__ L2CYCLE_CTR_BIT ;
 scalar_t__ l2_cycle_ctr_idx ;

__attribute__((used)) static inline u32 idx_to_reg_bit(u32 idx)
{
 if (idx == l2_cycle_ctr_idx)
  return BIT(L2CYCLE_CTR_BIT);

 return BIT(idx);
}
