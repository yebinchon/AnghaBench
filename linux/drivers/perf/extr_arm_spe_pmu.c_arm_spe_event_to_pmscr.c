
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_event_attr {int exclude_kernel; int exclude_user; } ;
struct perf_event {struct perf_event_attr attr; } ;


 int ATTR_CFG_GET_FLD (struct perf_event_attr*,int ) ;
 int BIT (int ) ;
 int CAP_SYS_ADMIN ;
 int CONFIG_PID_IN_CONTEXTIDR ;
 scalar_t__ IS_ENABLED (int ) ;
 int SYS_PMSCR_EL1_CX_SHIFT ;
 int SYS_PMSCR_EL1_E0SPE_SHIFT ;
 int SYS_PMSCR_EL1_E1SPE_SHIFT ;
 int SYS_PMSCR_EL1_PA_SHIFT ;
 int SYS_PMSCR_EL1_PCT_SHIFT ;
 int SYS_PMSCR_EL1_TS_SHIFT ;
 scalar_t__ capable (int ) ;
 int pa_enable ;
 int pct_enable ;
 int ts_enable ;

__attribute__((used)) static u64 arm_spe_event_to_pmscr(struct perf_event *event)
{
 struct perf_event_attr *attr = &event->attr;
 u64 reg = 0;

 reg |= ATTR_CFG_GET_FLD(attr, ts_enable) << SYS_PMSCR_EL1_TS_SHIFT;
 reg |= ATTR_CFG_GET_FLD(attr, pa_enable) << SYS_PMSCR_EL1_PA_SHIFT;
 reg |= ATTR_CFG_GET_FLD(attr, pct_enable) << SYS_PMSCR_EL1_PCT_SHIFT;

 if (!attr->exclude_user)
  reg |= BIT(SYS_PMSCR_EL1_E0SPE_SHIFT);

 if (!attr->exclude_kernel)
  reg |= BIT(SYS_PMSCR_EL1_E1SPE_SHIFT);

 if (IS_ENABLED(CONFIG_PID_IN_CONTEXTIDR) && capable(CAP_SYS_ADMIN))
  reg |= BIT(SYS_PMSCR_EL1_CX_SHIFT);

 return reg;
}
