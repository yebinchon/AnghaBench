
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_event_attr {int dummy; } ;
struct perf_event {struct perf_event_attr attr; } ;


 int ATTR_CFG_GET_FLD (struct perf_event_attr*,int ) ;
 int BIT (int ) ;
 int SYS_PMSFCR_EL1_B_SHIFT ;
 int SYS_PMSFCR_EL1_FE_SHIFT ;
 int SYS_PMSFCR_EL1_FL_SHIFT ;
 int SYS_PMSFCR_EL1_FT_SHIFT ;
 int SYS_PMSFCR_EL1_LD_SHIFT ;
 int SYS_PMSFCR_EL1_ST_SHIFT ;
 int branch_filter ;
 int event_filter ;
 int load_filter ;
 int min_latency ;
 int store_filter ;

__attribute__((used)) static u64 arm_spe_event_to_pmsfcr(struct perf_event *event)
{
 struct perf_event_attr *attr = &event->attr;
 u64 reg = 0;

 reg |= ATTR_CFG_GET_FLD(attr, load_filter) << SYS_PMSFCR_EL1_LD_SHIFT;
 reg |= ATTR_CFG_GET_FLD(attr, store_filter) << SYS_PMSFCR_EL1_ST_SHIFT;
 reg |= ATTR_CFG_GET_FLD(attr, branch_filter) << SYS_PMSFCR_EL1_B_SHIFT;

 if (reg)
  reg |= BIT(SYS_PMSFCR_EL1_FT_SHIFT);

 if (ATTR_CFG_GET_FLD(attr, event_filter))
  reg |= BIT(SYS_PMSFCR_EL1_FE_SHIFT);

 if (ATTR_CFG_GET_FLD(attr, min_latency))
  reg |= BIT(SYS_PMSFCR_EL1_FL_SHIFT);

 return reg;
}
