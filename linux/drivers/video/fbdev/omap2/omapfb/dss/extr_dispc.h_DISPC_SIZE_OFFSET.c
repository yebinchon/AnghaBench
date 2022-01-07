
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum omap_plane { ____Placeholder_omap_plane } omap_plane ;


 int BUG () ;






__attribute__((used)) static inline u16 DISPC_SIZE_OFFSET(enum omap_plane plane)
{
 switch (plane) {
 case 132:
 case 131:
 case 130:
  return 0x000C;
 case 129:
 case 128:
  return 0x00A8;
 default:
  BUG();
  return 0;
 }
}
