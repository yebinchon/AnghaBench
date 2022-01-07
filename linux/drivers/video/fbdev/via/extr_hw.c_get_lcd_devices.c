
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
 int VIA_DVP0 ;
 int VIA_DVP1 ;
 int VIA_LVDS1 ;
 int VIA_LVDS2 ;

__attribute__((used)) static u32 get_lcd_devices(int output_interface)
{
 switch (output_interface) {
 case 132:
  return VIA_DVP0;

 case 131:
  return VIA_DVP1;

 case 134:
  return VIA_LVDS2 | VIA_DVP0;

 case 133:
  return VIA_LVDS1 | VIA_DVP1;

 case 135:
  return VIA_LVDS1 | VIA_LVDS2;

 case 130:
 case 129:
  return VIA_LVDS1;

 case 128:
  return VIA_LVDS2;
 }

 return 0;
}
