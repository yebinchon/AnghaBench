
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct cluster_pmu {int pmu_lock; } ;


 int L2PMRESR ;
 int L2PMRESR_EN ;
 int L2PMRESR_GROUP_BITS ;
 int L2PMRESR_GROUP_MASK ;
 int get_l2_indirect_reg (int ) ;
 int set_l2_indirect_reg (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cluster_pmu_set_resr(struct cluster_pmu *cluster,
          u32 event_group, u32 event_cc)
{
 u64 field;
 u64 resr_val;
 u32 shift;
 unsigned long flags;

 shift = L2PMRESR_GROUP_BITS * event_group;
 field = ((u64)(event_cc & L2PMRESR_GROUP_MASK) << shift);

 spin_lock_irqsave(&cluster->pmu_lock, flags);

 resr_val = get_l2_indirect_reg(L2PMRESR);
 resr_val &= ~(L2PMRESR_GROUP_MASK << shift);
 resr_val |= field;
 resr_val |= L2PMRESR_EN;
 set_l2_indirect_reg(L2PMRESR, resr_val);

 spin_unlock_irqrestore(&cluster->pmu_lock, flags);
}
