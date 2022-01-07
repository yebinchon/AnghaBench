
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MAKE_PF (int,int,int,int,int,int,int,int,int) ;
 int pr_err (char*,unsigned int) ;

__attribute__((used)) static u32 fsl_diu_get_pixel_format(unsigned int bits_per_pixel)
{
 switch (bits_per_pixel) {
 case 32:

  return cpu_to_le32(0x10000000 | (3 << 25) | (0 << 23) | (1 << 21) | (2 << 19) | (8 << 12) | (8 << 8) | (8 << 4) | (8 << 0) | (3 << 16));
 case 24:

  return cpu_to_le32(0x10000000 | (4 << 25) | (2 << 23) | (1 << 21) | (0 << 19) | (0 << 12) | (8 << 8) | (8 << 4) | (8 << 0) | (2 << 16));
 case 16:

  return cpu_to_le32(0x10000000 | (4 << 25) | (0 << 23) | (1 << 21) | (2 << 19) | (0 << 12) | (5 << 8) | (6 << 4) | (5 << 0) | (1 << 16));
 default:
  pr_err("fsl-diu: unsupported color depth %u\n", bits_per_pixel);
  return 0;
 }
}
