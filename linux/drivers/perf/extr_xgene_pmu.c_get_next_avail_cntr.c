
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_pmu_dev {int max_counters; int cntr_assign_mask; } ;


 int ENOSPC ;
 int find_first_zero_bit (int ,int) ;
 int set_bit (int,int ) ;

__attribute__((used)) static int get_next_avail_cntr(struct xgene_pmu_dev *pmu_dev)
{
 int cntr;

 cntr = find_first_zero_bit(pmu_dev->cntr_assign_mask,
    pmu_dev->max_counters);
 if (cntr == pmu_dev->max_counters)
  return -ENOSPC;
 set_bit(cntr, pmu_dev->cntr_assign_mask);

 return cntr;
}
