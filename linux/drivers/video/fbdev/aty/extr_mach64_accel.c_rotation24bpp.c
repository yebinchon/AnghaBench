
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DST_24_ROTATION_ENABLE ;
 int DST_X_LEFT_TO_RIGHT ;

__attribute__((used)) static u32 rotation24bpp(u32 dx, u32 direction)
{
 u32 rotation;
 if (direction & DST_X_LEFT_TO_RIGHT) {
  rotation = (dx / 4) % 6;
 } else {
  rotation = ((dx + 2) / 4) % 6;
 }

 return ((rotation << 8) | DST_24_ROTATION_ENABLE);
}
