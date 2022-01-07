
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dispc_coef {int hc4_vc22; int hc0_vc00; int hc3_vc2; int hc2_vc1; int hc1_vc0; } ;
typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;
typedef enum omap_color_component { ____Placeholder_omap_color_component } omap_color_component ;


 int DISPC_COLOR_COMPONENT_RGB_Y ;
 int FLD_VAL (int ,int,int) ;
 struct dispc_coef* dispc_ovl_get_scale_coef (int,int) ;
 int dispc_ovl_write_firh2_reg (int,int,int) ;
 int dispc_ovl_write_firh_reg (int,int,int) ;
 int dispc_ovl_write_firhv2_reg (int,int,int) ;
 int dispc_ovl_write_firhv_reg (int,int,int) ;
 int dispc_ovl_write_firv2_reg (int,int,int) ;
 int dispc_ovl_write_firv_reg (int,int,int) ;

__attribute__((used)) static void dispc_ovl_set_scale_coef(enum omap_plane plane, int fir_hinc,
    int fir_vinc, int five_taps,
    enum omap_color_component color_comp)
{
 const struct dispc_coef *h_coef, *v_coef;
 int i;

 h_coef = dispc_ovl_get_scale_coef(fir_hinc, 1);
 v_coef = dispc_ovl_get_scale_coef(fir_vinc, five_taps);

 for (i = 0; i < 8; i++) {
  u32 h, hv;

  h = FLD_VAL(h_coef[i].hc0_vc00, 7, 0)
   | FLD_VAL(h_coef[i].hc1_vc0, 15, 8)
   | FLD_VAL(h_coef[i].hc2_vc1, 23, 16)
   | FLD_VAL(h_coef[i].hc3_vc2, 31, 24);
  hv = FLD_VAL(h_coef[i].hc4_vc22, 7, 0)
   | FLD_VAL(v_coef[i].hc1_vc0, 15, 8)
   | FLD_VAL(v_coef[i].hc2_vc1, 23, 16)
   | FLD_VAL(v_coef[i].hc3_vc2, 31, 24);

  if (color_comp == DISPC_COLOR_COMPONENT_RGB_Y) {
   dispc_ovl_write_firh_reg(plane, i, h);
   dispc_ovl_write_firhv_reg(plane, i, hv);
  } else {
   dispc_ovl_write_firh2_reg(plane, i, h);
   dispc_ovl_write_firhv2_reg(plane, i, hv);
  }

 }

 if (five_taps) {
  for (i = 0; i < 8; i++) {
   u32 v;
   v = FLD_VAL(v_coef[i].hc0_vc00, 7, 0)
    | FLD_VAL(v_coef[i].hc4_vc22, 15, 8);
   if (color_comp == DISPC_COLOR_COMPONENT_RGB_Y)
    dispc_ovl_write_firv_reg(plane, i, v);
   else
    dispc_ovl_write_firv2_reg(plane, i, v);
  }
 }
}
