
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;
typedef enum omap_color_component { ____Placeholder_omap_color_component } omap_color_component ;


 int DISPC_COLOR_COMPONENT_RGB_Y ;
 int DISPC_OVL_FIR (int) ;
 int DISPC_OVL_FIR2 (int) ;
 int FEAT_REG_FIRHINC ;
 int FEAT_REG_FIRVINC ;
 int FLD_VAL (int,int,int) ;
 int dispc_write_reg (int ,int) ;
 int dss_feat_get_reg_field (int ,int*,int*) ;

__attribute__((used)) static void dispc_ovl_set_fir(enum omap_plane plane,
    int hinc, int vinc,
    enum omap_color_component color_comp)
{
 u32 val;

 if (color_comp == DISPC_COLOR_COMPONENT_RGB_Y) {
  u8 hinc_start, hinc_end, vinc_start, vinc_end;

  dss_feat_get_reg_field(FEAT_REG_FIRHINC,
     &hinc_start, &hinc_end);
  dss_feat_get_reg_field(FEAT_REG_FIRVINC,
     &vinc_start, &vinc_end);
  val = FLD_VAL(vinc, vinc_start, vinc_end) |
    FLD_VAL(hinc, hinc_start, hinc_end);

  dispc_write_reg(DISPC_OVL_FIR(plane), val);
 } else {
  val = FLD_VAL(vinc, 28, 16) | FLD_VAL(hinc, 12, 0);
  dispc_write_reg(DISPC_OVL_FIR2(plane), val);
 }
}
