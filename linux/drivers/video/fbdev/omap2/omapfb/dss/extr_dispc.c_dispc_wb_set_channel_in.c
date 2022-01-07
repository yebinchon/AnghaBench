
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;
typedef enum dss_writeback_channel { ____Placeholder_dss_writeback_channel } dss_writeback_channel ;


 int DISPC_OVL_ATTRIBUTES (int) ;
 int OMAP_DSS_WB ;
 int REG_FLD_MOD (int ,int,int,int) ;

void dispc_wb_set_channel_in(enum dss_writeback_channel channel)
{
 enum omap_plane plane = OMAP_DSS_WB;

 REG_FLD_MOD(DISPC_OVL_ATTRIBUTES(plane), channel, 18, 16);
}
