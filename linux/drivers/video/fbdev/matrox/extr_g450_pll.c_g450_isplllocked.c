
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matrox_fb_info {int dummy; } ;


 int matroxfb_DAC_in (struct matrox_fb_info const*,unsigned int) ;

__attribute__((used)) static inline int g450_isplllocked(const struct matrox_fb_info *minfo,
       unsigned int regidx)
{
 unsigned int j;

 for (j = 0; j < 1000; j++) {
  if (matroxfb_DAC_in(minfo, regidx) & 0x40) {
   unsigned int r = 0;
   int i;

   for (i = 0; i < 100; i++) {
    r += matroxfb_DAC_in(minfo, regidx) & 0x40;
   }
   return r >= (90 * 0x40);
  }

 }
 return 0;
}
