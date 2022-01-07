
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct matrox_pll_limits {int vcomin; } ;
struct matrox_pll_cache {int dummy; } ;
struct TYPE_4__ {struct matrox_pll_cache video; struct matrox_pll_cache system; struct matrox_pll_cache pixel; } ;
struct TYPE_3__ {struct matrox_pll_limits video; struct matrox_pll_limits system; struct matrox_pll_limits pixel; } ;
struct matrox_fb_info {unsigned int max_pixel_clock_panellink; int hw; TYPE_2__ cache; TYPE_1__ limits; int pcidev; } ;


 int EBUSY ;
 int EINVAL ;
 int M1064_XDVICLKCTRL_C1DVICLKEN ;
 int M1064_XDVICLKCTRL_C1DVICLKSEL ;
 int M1064_XDVICLKCTRL_DVIDATAPATHSEL ;
 int M1064_XDVICLKCTRL_DVILOOPCTL ;
 int M1064_XDVICLKCTRL_P1LOOPBWDTCTL ;
 int M1064_XPIXCLKCTRL ;
 int M1064_XPIXCLKCTRL_DIS ;
 int M1064_XPIXCLKCTRL_PLL_UP ;
 int M1064_XPIXPLLCM ;
 int M1064_XPIXPLLCN ;
 int M1064_XPWRCTRL ;
 int M1064_XPWRCTRL_PANELPDN ;
 int M_MISC_REG ;
 int M_MISC_REG_READ ;



 int M_SEQ1 ;
 int M_SEQ1_SCROFF ;
 int M_SEQ_DATA ;
 int M_SEQ_INDEX ;


 unsigned int NO_MORE_MNP ;
 int PCI_OPTION_REG ;
 int g450_addcache (struct matrox_pll_cache*,unsigned int,unsigned int) ;
 unsigned int g450_checkcache (struct matrox_fb_info*,struct matrox_pll_cache*,unsigned int) ;
 unsigned int g450_findworkingpll (struct matrox_fb_info*,unsigned int,unsigned int*,unsigned int) ;
 unsigned int g450_firstpll (struct matrox_fb_info*,struct matrox_pll_limits const*,unsigned int*,unsigned int) ;
 unsigned int g450_mnp2vco (struct matrox_fb_info*,unsigned int) ;
 unsigned int g450_nextpll (struct matrox_fb_info*,struct matrox_pll_limits const*,unsigned int*,unsigned int) ;
 int g450_vco2f (unsigned int,unsigned int) ;
 int matroxfb_DAC_in (struct matrox_fb_info*,int ) ;
 int matroxfb_DAC_lock_irqsave (unsigned long) ;
 int matroxfb_DAC_out (struct matrox_fb_info*,int ,int) ;
 int matroxfb_DAC_unlock_irqrestore (unsigned long) ;
 int matroxfb_g450_setpll_cond (struct matrox_fb_info*,unsigned int,unsigned int) ;
 int mga_inb (int ) ;
 int mga_outb (int ,int) ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_write_config_dword (int ,int ,int) ;
 unsigned int pll_freq_delta (unsigned int,int ) ;
 int updatehwstate_clk (int *,unsigned int,unsigned int) ;

__attribute__((used)) static int __g450_setclk(struct matrox_fb_info *minfo, unsigned int fout,
    unsigned int pll, unsigned int *mnparray,
    unsigned int *deltaarray)
{
 unsigned int mnpcount;
 unsigned int pixel_vco;
 const struct matrox_pll_limits* pi;
 struct matrox_pll_cache* ci;

 pixel_vco = 0;
 switch (pll) {
  case 132:
  case 131:
  case 130:
   {
    u_int8_t tmp, xpwrctrl;
    unsigned long flags;

    matroxfb_DAC_lock_irqsave(flags);

    xpwrctrl = matroxfb_DAC_in(minfo, M1064_XPWRCTRL);
    matroxfb_DAC_out(minfo, M1064_XPWRCTRL, xpwrctrl & ~M1064_XPWRCTRL_PANELPDN);
    mga_outb(M_SEQ_INDEX, M_SEQ1);
    mga_outb(M_SEQ_DATA, mga_inb(M_SEQ_DATA) | M_SEQ1_SCROFF);
    tmp = matroxfb_DAC_in(minfo, M1064_XPIXCLKCTRL);
    tmp |= M1064_XPIXCLKCTRL_DIS;
    if (!(tmp & M1064_XPIXCLKCTRL_PLL_UP)) {
     tmp |= M1064_XPIXCLKCTRL_PLL_UP;
    }
    matroxfb_DAC_out(minfo, M1064_XPIXCLKCTRL, tmp);


    if (fout >= minfo->max_pixel_clock_panellink)
     tmp = 0;
    else tmp =
     M1064_XDVICLKCTRL_DVIDATAPATHSEL |
     M1064_XDVICLKCTRL_C1DVICLKSEL |
     M1064_XDVICLKCTRL_C1DVICLKEN |
     M1064_XDVICLKCTRL_DVILOOPCTL |
     M1064_XDVICLKCTRL_P1LOOPBWDTCTL;


    matroxfb_DAC_out(minfo, M1064_XPWRCTRL,
       xpwrctrl);

    matroxfb_DAC_unlock_irqrestore(flags);
   }
   {
    u_int8_t misc;

    misc = mga_inb(M_MISC_REG_READ) & ~0x0C;
    switch (pll) {
     case 132:
      break;
     case 131:
      misc |= 0x04;
      break;
     default:
      misc |= 0x0C;
      break;
    }
    mga_outb(M_MISC_REG, misc);
   }
   pi = &minfo->limits.pixel;
   ci = &minfo->cache.pixel;
   break;
  case 129:
   {
    u_int32_t opt;

    pci_read_config_dword(minfo->pcidev, PCI_OPTION_REG, &opt);
    if (!(opt & 0x20)) {
     pci_write_config_dword(minfo->pcidev, PCI_OPTION_REG, opt | 0x20);
    }
   }
   pi = &minfo->limits.system;
   ci = &minfo->cache.system;
   break;
  case 128:
   {
    u_int8_t tmp;
    unsigned int mnp;
    unsigned long flags;

    matroxfb_DAC_lock_irqsave(flags);
    tmp = matroxfb_DAC_in(minfo, M1064_XPWRCTRL);
    if (!(tmp & 2)) {
     matroxfb_DAC_out(minfo, M1064_XPWRCTRL, tmp | 2);
    }

    mnp = matroxfb_DAC_in(minfo, M1064_XPIXPLLCM) << 16;
    mnp |= matroxfb_DAC_in(minfo, M1064_XPIXPLLCN) << 8;
    pixel_vco = g450_mnp2vco(minfo, mnp);
    matroxfb_DAC_unlock_irqrestore(flags);
   }
   pi = &minfo->limits.video;
   ci = &minfo->cache.video;
   break;
  default:
   return -EINVAL;
 }

 mnpcount = 0;
 {
  unsigned int mnp;
  unsigned int xvco;

  for (mnp = g450_firstpll(minfo, pi, &xvco, fout); mnp != NO_MORE_MNP; mnp = g450_nextpll(minfo, pi, &xvco, mnp)) {
   unsigned int idx;
   unsigned int vco;
   unsigned int delta;

   vco = g450_mnp2vco(minfo, mnp);
   delta = pll_freq_delta(fout, g450_vco2f(mnp, vco));
   for (idx = mnpcount; idx > 0; idx--) {




    if (delta <= deltaarray[idx-1]) {




     if (delta == deltaarray[idx-1]
         && vco != g450_mnp2vco(minfo, mnparray[idx-1])
         && vco < (pi->vcomin * 17 / 16)) {
      break;
     }
     mnparray[idx] = mnparray[idx-1];
     deltaarray[idx] = deltaarray[idx-1];
    } else {
     break;
    }
   }
   mnparray[idx] = mnp;
   deltaarray[idx] = delta;
   mnpcount++;
  }
 }

 if (!mnpcount) {
  return -EBUSY;
 }
 {
  unsigned long flags;
  unsigned int mnp;

  matroxfb_DAC_lock_irqsave(flags);
  mnp = g450_checkcache(minfo, ci, mnparray[0]);
  if (mnp != NO_MORE_MNP) {
   matroxfb_g450_setpll_cond(minfo, mnp, pll);
  } else {
   mnp = g450_findworkingpll(minfo, pll, mnparray, mnpcount);
   g450_addcache(ci, mnparray[0], mnp);
  }
  updatehwstate_clk(&minfo->hw, mnp, pll);
  matroxfb_DAC_unlock_irqrestore(flags);
  return mnp;
 }
}
