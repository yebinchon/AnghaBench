
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int L2PMCR ;
 int L2PMCR_NUM_EV_MASK ;
 int L2PMCR_NUM_EV_SHIFT ;
 int get_l2_indirect_reg (int ) ;

__attribute__((used)) static int get_num_counters(void)
{
 int val;

 val = get_l2_indirect_reg(L2PMCR);





 return ((val >> L2PMCR_NUM_EV_SHIFT) & L2PMCR_NUM_EV_MASK) + 1;
}
