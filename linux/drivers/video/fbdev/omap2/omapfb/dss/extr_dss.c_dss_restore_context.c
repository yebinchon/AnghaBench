
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctx_valid; } ;


 int CONTROL ;
 int DSSDBG (char*) ;
 int OMAP_DISPLAY_TYPE_SDI ;
 int OMAP_DSS_CHANNEL_LCD ;
 int PLL_CONTROL ;
 int RR (int ) ;
 int SDI_CONTROL ;
 TYPE_1__ dss ;
 int dss_feat_get_supported_displays (int ) ;

__attribute__((used)) static void dss_restore_context(void)
{
 DSSDBG("dss_restore_context\n");

 if (!dss.ctx_valid)
  return;

 RR(CONTROL);

 if (dss_feat_get_supported_displays(OMAP_DSS_CHANNEL_LCD) &
   OMAP_DISPLAY_TYPE_SDI) {
  RR(SDI_CONTROL);
  RR(PLL_CONTROL);
 }

 DSSDBG("context restored\n");
}
