
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPRINTK (char*,unsigned int) ;

__attribute__((used)) static inline int pm3fb_shift_bpp(unsigned bpp, int v)
{
 switch (bpp) {
 case 8:
  return (v >> 4);
 case 16:
  return (v >> 3);
 case 32:
  return (v >> 2);
 }
 DPRINTK("Unsupported depth %u\n", bpp);
 return 0;
}
