
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;
typedef enum omap_overlay_caps { ____Placeholder_omap_overlay_caps } omap_overlay_caps ;


 int DISPC_OVL_POSITION (int) ;
 int FLD_VAL (int,int,int) ;
 int OMAP_DSS_OVL_CAP_POS ;
 int dispc_write_reg (int ,int) ;

__attribute__((used)) static void dispc_ovl_set_pos(enum omap_plane plane,
  enum omap_overlay_caps caps, int x, int y)
{
 u32 val;

 if ((caps & OMAP_DSS_OVL_CAP_POS) == 0)
  return;

 val = FLD_VAL(y, 26, 16) | FLD_VAL(x, 10, 0);

 dispc_write_reg(DISPC_OVL_POSITION(plane), val);
}
