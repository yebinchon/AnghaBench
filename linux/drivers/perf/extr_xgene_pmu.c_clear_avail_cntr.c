
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_pmu_dev {int cntr_assign_mask; } ;


 int clear_bit (int,int ) ;

__attribute__((used)) static void clear_avail_cntr(struct xgene_pmu_dev *pmu_dev, int cntr)
{
 clear_bit(cntr, pmu_dev->cntr_assign_mask);
}
