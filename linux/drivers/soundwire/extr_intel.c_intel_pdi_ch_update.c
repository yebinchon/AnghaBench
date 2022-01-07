
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pdm; int pcm; } ;
struct sdw_intel {TYPE_1__ cdns; } ;


 int intel_pdi_stream_ch_update (struct sdw_intel*,int *,int) ;

__attribute__((used)) static int intel_pdi_ch_update(struct sdw_intel *sdw)
{

 intel_pdi_stream_ch_update(sdw, &sdw->cdns.pcm, 1);
 intel_pdi_stream_ch_update(sdw, &sdw->cdns.pdm, 0);

 return 0;
}
