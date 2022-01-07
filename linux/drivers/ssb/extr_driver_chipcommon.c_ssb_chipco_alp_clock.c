
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssb_chipcommon {int capabilities; } ;


 int SSB_CHIPCO_CAP_PMU ;
 int ssb_pmu_get_alp_clock (struct ssb_chipcommon*) ;

__attribute__((used)) static u32 ssb_chipco_alp_clock(struct ssb_chipcommon *cc)
{
 if (cc->capabilities & SSB_CHIPCO_CAP_PMU)
  return ssb_pmu_get_alp_clock(cc);

 return 20000000;
}
