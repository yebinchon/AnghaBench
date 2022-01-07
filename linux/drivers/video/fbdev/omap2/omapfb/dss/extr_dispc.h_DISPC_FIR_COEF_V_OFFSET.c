
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;


 int BUG () ;






__attribute__((used)) static inline u16 DISPC_FIR_COEF_V_OFFSET(enum omap_plane plane, u16 i)
{
 switch (plane) {
 case 132:
  BUG();
  return 0;
 case 131:
  return 0x0124 + i * 0x4;
 case 130:
  return 0x00B4 + i * 0x4;
 case 129:
 case 128:
  return 0x0050 + i * 0x4;
 default:
  BUG();
  return 0;
 }
}
