
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matrox_fb_info {int dummy; } ;


 int DAC1064_XSYSPLLM ;
 int DAC1064_XSYSPLLN ;
 int DAC1064_XSYSPLLP ;
 unsigned int DAC1064_XSYSPLLSTAT ;
 int M1064_XPIXPLLAM ;
 int M1064_XPIXPLLAN ;
 int M1064_XPIXPLLAP ;
 int M1064_XPIXPLLBM ;
 int M1064_XPIXPLLBN ;
 int M1064_XPIXPLLBP ;
 int M1064_XPIXPLLCM ;
 int M1064_XPIXPLLCN ;
 int M1064_XPIXPLLCP ;
 unsigned int M1064_XPIXPLLSTAT ;
 int M1064_XVIDPLLM ;
 int M1064_XVIDPLLN ;
 int M1064_XVIDPLLP ;
 unsigned int M1064_XVIDPLLSTAT ;





 int matroxfb_DAC_out (struct matrox_fb_info const*,int ,unsigned int) ;

__attribute__((used)) static inline unsigned int g450_setpll(const struct matrox_fb_info *minfo,
           unsigned int mnp, unsigned int pll)
{
 switch (pll) {
  case 132:
   matroxfb_DAC_out(minfo, M1064_XPIXPLLAM, mnp >> 16);
   matroxfb_DAC_out(minfo, M1064_XPIXPLLAN, mnp >> 8);
   matroxfb_DAC_out(minfo, M1064_XPIXPLLAP, mnp);
   return M1064_XPIXPLLSTAT;

  case 131:
   matroxfb_DAC_out(minfo, M1064_XPIXPLLBM, mnp >> 16);
   matroxfb_DAC_out(minfo, M1064_XPIXPLLBN, mnp >> 8);
   matroxfb_DAC_out(minfo, M1064_XPIXPLLBP, mnp);
   return M1064_XPIXPLLSTAT;

  case 130:
   matroxfb_DAC_out(minfo, M1064_XPIXPLLCM, mnp >> 16);
   matroxfb_DAC_out(minfo, M1064_XPIXPLLCN, mnp >> 8);
   matroxfb_DAC_out(minfo, M1064_XPIXPLLCP, mnp);
   return M1064_XPIXPLLSTAT;

  case 129:
   matroxfb_DAC_out(minfo, DAC1064_XSYSPLLM, mnp >> 16);
   matroxfb_DAC_out(minfo, DAC1064_XSYSPLLN, mnp >> 8);
   matroxfb_DAC_out(minfo, DAC1064_XSYSPLLP, mnp);
   return DAC1064_XSYSPLLSTAT;

  case 128:
   matroxfb_DAC_out(minfo, M1064_XVIDPLLM, mnp >> 16);
   matroxfb_DAC_out(minfo, M1064_XVIDPLLN, mnp >> 8);
   matroxfb_DAC_out(minfo, M1064_XVIDPLLP, mnp);
   return M1064_XVIDPLLSTAT;
 }
 return 0;
}
