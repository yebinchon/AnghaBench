
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;


 int BUG_ON (int) ;
 int DISPC_OVL_ATTRIBUTES (int) ;
 int FLD_MOD (int ,int,int,int) ;
 int OMAP_DSS_GFX ;
 int dispc_read_reg (int ) ;
 int dispc_write_reg (int ,int ) ;

__attribute__((used)) static void dispc_ovl_set_vid_color_conv(enum omap_plane plane, bool enable)
{
 u32 val;

 BUG_ON(plane == OMAP_DSS_GFX);

 val = dispc_read_reg(DISPC_OVL_ATTRIBUTES(plane));
 val = FLD_MOD(val, enable, 9, 9);
 dispc_write_reg(DISPC_OVL_ATTRIBUTES(plane), val);
}
