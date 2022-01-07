
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct soc_mbus_pixelfmt {scalar_t__ layout; int packing; } ;
typedef int s32 ;


 int EINVAL ;
 scalar_t__ SOC_MBUS_LAYOUT_PACKED ;




s32 soc_mbus_image_size(const struct soc_mbus_pixelfmt *mf,
   u32 bytes_per_line, u32 height)
{
 if (mf->layout == SOC_MBUS_LAYOUT_PACKED)
  return bytes_per_line * height;

 switch (mf->packing) {
 case 129:
 case 128:
  return bytes_per_line * height * 2;
 case 130:
  return bytes_per_line * height * 3 / 2;
 default:
  return -EINVAL;
 }
}
