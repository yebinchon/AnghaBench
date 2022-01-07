
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matrox_fb_info {int dummy; } ;


 int DAC1064_XSYSPLLM ;
 int DAC1064_XSYSPLLN ;
 int DAC1064_XSYSPLLP ;
 int M1064_XPIXPLLAM ;
 int M1064_XPIXPLLAN ;
 int M1064_XPIXPLLAP ;
 int M1064_XPIXPLLBM ;
 int M1064_XPIXPLLBN ;
 int M1064_XPIXPLLBP ;
 int M1064_XPIXPLLCM ;
 int M1064_XPIXPLLCN ;
 int M1064_XPIXPLLCP ;
 int M1064_XVIDPLLM ;
 int M1064_XVIDPLLN ;
 int M1064_XVIDPLLP ;





 unsigned char matroxfb_DAC_in (struct matrox_fb_info const*,int ) ;

__attribute__((used)) static inline unsigned int g450_cmppll(const struct matrox_fb_info *minfo,
           unsigned int mnp, unsigned int pll)
{
 unsigned char m = mnp >> 16;
 unsigned char n = mnp >> 8;
 unsigned char p = mnp;

 switch (pll) {
  case 132:
   return (matroxfb_DAC_in(minfo, M1064_XPIXPLLAM) != m ||
    matroxfb_DAC_in(minfo, M1064_XPIXPLLAN) != n ||
    matroxfb_DAC_in(minfo, M1064_XPIXPLLAP) != p);

  case 131:
   return (matroxfb_DAC_in(minfo, M1064_XPIXPLLBM) != m ||
    matroxfb_DAC_in(minfo, M1064_XPIXPLLBN) != n ||
    matroxfb_DAC_in(minfo, M1064_XPIXPLLBP) != p);

  case 130:
   return (matroxfb_DAC_in(minfo, M1064_XPIXPLLCM) != m ||
    matroxfb_DAC_in(minfo, M1064_XPIXPLLCN) != n ||
    matroxfb_DAC_in(minfo, M1064_XPIXPLLCP) != p);

  case 129:
   return (matroxfb_DAC_in(minfo, DAC1064_XSYSPLLM) != m ||
    matroxfb_DAC_in(minfo, DAC1064_XSYSPLLN) != n ||
    matroxfb_DAC_in(minfo, DAC1064_XSYSPLLP) != p);

  case 128:
   return (matroxfb_DAC_in(minfo, M1064_XVIDPLLM) != m ||
    matroxfb_DAC_in(minfo, M1064_XVIDPLLN) != n ||
    matroxfb_DAC_in(minfo, M1064_XVIDPLLP) != p);
 }
 return 1;
}
