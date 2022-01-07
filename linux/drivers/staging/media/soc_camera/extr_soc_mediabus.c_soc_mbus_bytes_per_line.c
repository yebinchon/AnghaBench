
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct soc_mbus_pixelfmt {scalar_t__ layout; int bits_per_sample; int packing; } ;
typedef int s32 ;


 int EINVAL ;
 scalar_t__ SOC_MBUS_LAYOUT_PACKED ;
s32 soc_mbus_bytes_per_line(u32 width, const struct soc_mbus_pixelfmt *mf)
{
 if (mf->layout != SOC_MBUS_LAYOUT_PACKED)
  return width * mf->bits_per_sample / 8;

 switch (mf->packing) {
 case 129:
  return width * mf->bits_per_sample / 8;
 case 133:
 case 132:
 case 131:
  return width * 2;
 case 134:
  return width * 3 / 2;
 case 128:
  return 0;
 case 130:
  return width * 4;
 }
 return -EINVAL;
}
