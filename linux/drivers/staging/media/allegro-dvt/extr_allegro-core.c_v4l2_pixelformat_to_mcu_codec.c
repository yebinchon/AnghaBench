
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s8 ;




__attribute__((used)) static s8 v4l2_pixelformat_to_mcu_codec(u32 pixelformat)
{
 switch (pixelformat) {
 case 128:
 default:
  return 1;
 }
}
