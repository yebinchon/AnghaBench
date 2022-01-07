
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int OMAP_DSS_WB ;
 unsigned long dispc_mgr_lclk_rate (int) ;
 int dispc_ovl_get_channel_out (int) ;

__attribute__((used)) static unsigned long dispc_plane_lclk_rate(enum omap_plane plane)
{
 enum omap_channel channel;

 if (plane == OMAP_DSS_WB)
  return 0;

 channel = dispc_ovl_get_channel_out(plane);

 return dispc_mgr_lclk_rate(channel);
}
