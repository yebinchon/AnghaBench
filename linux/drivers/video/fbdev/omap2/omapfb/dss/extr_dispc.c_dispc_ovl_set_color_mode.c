
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;
typedef enum omap_color_mode { ____Placeholder_omap_color_mode } omap_color_mode ;


 int BUG () ;
 int DISPC_OVL_ATTRIBUTES (int) ;
 int OMAP_DSS_GFX ;
 int REG_FLD_MOD (int ,int,int,int) ;

__attribute__((used)) static void dispc_ovl_set_color_mode(enum omap_plane plane,
  enum omap_color_mode color_mode)
{
 u32 m = 0;
 if (plane != OMAP_DSS_GFX) {
  switch (color_mode) {
  case 139:
   m = 0x0; break;
  case 132:
   m = 0x1; break;
  case 134:
   m = 0x2; break;
  case 138:
   m = 0x4; break;
  case 146:
   m = 0x5; break;
  case 137:
   m = 0x6; break;
  case 145:
   m = 0x7; break;
  case 135:
   m = 0x8; break;
  case 136:
   m = 0x9; break;
  case 128:
   m = 0xa; break;
  case 130:
   m = 0xb; break;
  case 144:
   m = 0xc; break;
  case 133:
   m = 0xd; break;
  case 131:
   m = 0xe; break;
  case 129:
   m = 0xf; break;
  default:
   BUG(); return;
  }
 } else {
  switch (color_mode) {
  case 143:
   m = 0x0; break;
  case 142:
   m = 0x1; break;
  case 141:
   m = 0x2; break;
  case 140:
   m = 0x3; break;
  case 138:
   m = 0x4; break;
  case 146:
   m = 0x5; break;
  case 137:
   m = 0x6; break;
  case 145:
   m = 0x7; break;
  case 135:
   m = 0x8; break;
  case 136:
   m = 0x9; break;
  case 132:
   m = 0xa; break;
  case 134:
   m = 0xb; break;
  case 144:
   m = 0xc; break;
  case 133:
   m = 0xd; break;
  case 131:
   m = 0xe; break;
  case 129:
   m = 0xf; break;
  default:
   BUG(); return;
  }
 }

 REG_FLD_MOD(DISPC_OVL_ATTRIBUTES(plane), m, 4, 1);
}
