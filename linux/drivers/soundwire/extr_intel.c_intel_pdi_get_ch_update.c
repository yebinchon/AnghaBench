
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_intel {int dummy; } ;
struct sdw_cdns_pdi {scalar_t__ ch_count; int num; } ;


 scalar_t__ intel_pdi_get_ch_cap (struct sdw_intel*,int ,int) ;

__attribute__((used)) static int intel_pdi_get_ch_update(struct sdw_intel *sdw,
       struct sdw_cdns_pdi *pdi,
       unsigned int num_pdi,
       unsigned int *num_ch, bool pcm)
{
 int i, ch_count = 0;

 for (i = 0; i < num_pdi; i++) {
  pdi->ch_count = intel_pdi_get_ch_cap(sdw, pdi->num, pcm);
  ch_count += pdi->ch_count;
  pdi++;
 }

 *num_ch = ch_count;
 return 0;
}
