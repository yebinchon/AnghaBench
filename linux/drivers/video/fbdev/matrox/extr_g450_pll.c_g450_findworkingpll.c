
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matrox_fb_info {int dummy; } ;


 int g450_setpll (struct matrox_fb_info*,unsigned int,unsigned int) ;
 scalar_t__ g450_testpll (struct matrox_fb_info*,unsigned int,unsigned int) ;

__attribute__((used)) static inline unsigned int g450_findworkingpll(struct matrox_fb_info *minfo,
            unsigned int pll,
            unsigned int *mnparray,
            unsigned int mnpcount)
{
 unsigned int found = 0;
 unsigned int idx;
 unsigned int mnpfound = mnparray[0];

 for (idx = 0; idx < mnpcount; idx++) {
  unsigned int sarray[3];
  unsigned int *sptr;
  {
   unsigned int mnp;

   sptr = sarray;
   mnp = mnparray[idx];
   if (mnp & 0x38) {
    *sptr++ = mnp - 8;
   }
   if ((mnp & 0x38) != 0x38) {
    *sptr++ = mnp + 8;
   }
   *sptr = mnp;
  }
  while (sptr >= sarray) {
   unsigned int mnp = *sptr--;

   if (g450_testpll(minfo, mnp - 0x0300, pll) &&
       g450_testpll(minfo, mnp + 0x0300, pll) &&
       g450_testpll(minfo, mnp - 0x0200, pll) &&
       g450_testpll(minfo, mnp + 0x0200, pll) &&
       g450_testpll(minfo, mnp - 0x0100, pll) &&
       g450_testpll(minfo, mnp + 0x0100, pll)) {
    if (g450_testpll(minfo, mnp, pll)) {
     return mnp;
    }
   } else if (!found && g450_testpll(minfo, mnp, pll)) {
    mnpfound = mnp;
    found = 1;
   }
  }
 }
 g450_setpll(minfo, mnpfound, pll);
 return mnpfound;
}
