
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* chip_info; } ;
struct TYPE_3__ {int gfx_chip_name; } ;







 int UNICHROME_CLE266 ;
 int VIA_DVP0 ;
 int VIA_DVP1 ;
 int VIA_LDVP0 ;
 int VIA_LDVP1 ;
 int VIA_LVDS1 ;
 int VIA_LVDS2 ;
 TYPE_2__* viaparinfo ;

__attribute__((used)) static u32 get_dvi_devices(int output_interface)
{
 switch (output_interface) {
 case 130:
  return VIA_DVP0 | VIA_LDVP0;

 case 129:
  if (viaparinfo->chip_info->gfx_chip_name == UNICHROME_CLE266)
   return VIA_LDVP1;
  else
   return VIA_DVP1;

 case 132:
  if (viaparinfo->chip_info->gfx_chip_name == UNICHROME_CLE266)
   return 0;
  else
   return VIA_LVDS2 | VIA_DVP0;

 case 131:
  if (viaparinfo->chip_info->gfx_chip_name == UNICHROME_CLE266)
   return 0;
  else
   return VIA_DVP1 | VIA_LVDS1;

 case 128:
  return VIA_LVDS1;
 }

 return 0;
}
