
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;


__attribute__((used)) static u32 v4l2_pixelformat_to_mcu_format(u32 pixelformat)
{
 switch (pixelformat) {
 case 128:

  return 0x100 | 0x88;
 default:
  return -EINVAL;
 }
}
