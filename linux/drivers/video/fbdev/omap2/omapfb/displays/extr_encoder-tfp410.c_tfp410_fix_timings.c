
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_video_timings {int de_level; void* sync_pclk_edge; void* data_pclk_edge; } ;


 void* OMAPDSS_DRIVE_SIG_RISING_EDGE ;
 int OMAPDSS_SIG_ACTIVE_HIGH ;

__attribute__((used)) static void tfp410_fix_timings(struct omap_video_timings *timings)
{
 timings->data_pclk_edge = OMAPDSS_DRIVE_SIG_RISING_EDGE;
 timings->sync_pclk_edge = OMAPDSS_DRIVE_SIG_RISING_EDGE;
 timings->de_level = OMAPDSS_SIG_ACTIVE_HIGH;
}
