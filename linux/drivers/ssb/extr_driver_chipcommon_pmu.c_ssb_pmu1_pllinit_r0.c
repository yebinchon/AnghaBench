
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int crystalfreq; } ;
struct ssb_chipcommon {TYPE_2__* dev; TYPE_1__ pmu; } ;
struct ssb_bus {int chip_id; } ;
struct pmu1_plltab_entry {int freq; int xf; scalar_t__ ndiv_frac; scalar_t__ ndiv_int; scalar_t__ p2div; scalar_t__ p1div; } ;
struct TYPE_4__ {int dev; struct ssb_bus* bus; } ;


 int BUG_ON (int) ;
 int SSB_CHIPCO_CLKCTLST ;
 int SSB_CHIPCO_CLKCTLST_HAVEHT ;
 int SSB_CHIPCO_PMU_CTL ;
 int SSB_CHIPCO_PMU_CTL_ILP_DIV ;
 int SSB_CHIPCO_PMU_CTL_ILP_DIV_SHIFT ;
 int SSB_CHIPCO_PMU_CTL_XTALFREQ ;
 int SSB_CHIPCO_PMU_CTL_XTALFREQ_SHIFT ;
 int SSB_CHIPCO_PMU_MAXRES_MSK ;
 int SSB_CHIPCO_PMU_MINRES_MSK ;
 int SSB_PMU1_DEFAULT_XTALFREQ ;
 int SSB_PMU1_PLLCTL0 ;
 int SSB_PMU1_PLLCTL0_P1DIV ;
 int SSB_PMU1_PLLCTL0_P1DIV_SHIFT ;
 int SSB_PMU1_PLLCTL0_P2DIV ;
 int SSB_PMU1_PLLCTL0_P2DIV_SHIFT ;
 int SSB_PMU1_PLLCTL2 ;
 int SSB_PMU1_PLLCTL2_NDIVINT ;
 int SSB_PMU1_PLLCTL2_NDIVINT_SHIFT ;
 int SSB_PMU1_PLLCTL2_NDIVMODE ;
 int SSB_PMU1_PLLCTL2_NDIVMODE_SHIFT ;
 int SSB_PMU1_PLLCTL3 ;
 int SSB_PMU1_PLLCTL3_NDIVFRAC ;
 int SSB_PMU1_PLLCTL3_NDIVFRAC_SHIFT ;
 int SSB_PMU1_PLLCTL5 ;
 int SSB_PMU1_PLLCTL5_CLKDRV ;
 int SSB_PMU1_PLLCTL5_CLKDRV_SHIFT ;
 int SSB_PMURES_4325_BBPLL_PWRSW_PU ;
 int SSB_PMURES_4325_HT_AVAIL ;
 int WARN_ON (int) ;
 int chipco_mask32 (struct ssb_chipcommon*,int ,int) ;
 int chipco_read32 (struct ssb_chipcommon*,int ) ;
 int chipco_write32 (struct ssb_chipcommon*,int ,int) ;
 int dev_emerg (int ,char*) ;
 int dev_info (int ,char*,int,int) ;
 struct pmu1_plltab_entry* pmu1_plltab_find_entry (int) ;
 int ssb_chipco_pll_read (struct ssb_chipcommon*,int ) ;
 int ssb_chipco_pll_write (struct ssb_chipcommon*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void ssb_pmu1_pllinit_r0(struct ssb_chipcommon *cc,
    u32 crystalfreq)
{
 struct ssb_bus *bus = cc->dev->bus;
 const struct pmu1_plltab_entry *e = ((void*)0);
 u32 buffer_strength = 0;
 u32 tmp, pllctl, pmuctl;
 unsigned int i;

 if (bus->chip_id == 0x4312) {


  cc->pmu.crystalfreq = 20000;
  return;
 }

 if (crystalfreq)
  e = pmu1_plltab_find_entry(crystalfreq);
 if (!e)
  e = pmu1_plltab_find_entry(SSB_PMU1_DEFAULT_XTALFREQ);
 BUG_ON(!e);
 crystalfreq = e->freq;
 cc->pmu.crystalfreq = e->freq;


 pmuctl = chipco_read32(cc, SSB_CHIPCO_PMU_CTL);
 if (((pmuctl & SSB_CHIPCO_PMU_CTL_XTALFREQ) >> SSB_CHIPCO_PMU_CTL_XTALFREQ_SHIFT) == e->xf) {

  return;
 }

 dev_info(cc->dev->dev, "Programming PLL to %u.%03u MHz\n",
   crystalfreq / 1000, crystalfreq % 1000);


 switch (bus->chip_id) {
 case 0x4325:
  chipco_mask32(cc, SSB_CHIPCO_PMU_MINRES_MSK,
         ~((1 << SSB_PMURES_4325_BBPLL_PWRSW_PU) |
    (1 << SSB_PMURES_4325_HT_AVAIL)));
  chipco_mask32(cc, SSB_CHIPCO_PMU_MAXRES_MSK,
         ~((1 << SSB_PMURES_4325_BBPLL_PWRSW_PU) |
    (1 << SSB_PMURES_4325_HT_AVAIL)));

  buffer_strength = 0x222222;
  break;
 default:
  WARN_ON(1);
 }
 for (i = 1500; i; i--) {
  tmp = chipco_read32(cc, SSB_CHIPCO_CLKCTLST);
  if (!(tmp & SSB_CHIPCO_CLKCTLST_HAVEHT))
   break;
  udelay(10);
 }
 tmp = chipco_read32(cc, SSB_CHIPCO_CLKCTLST);
 if (tmp & SSB_CHIPCO_CLKCTLST_HAVEHT)
  dev_emerg(cc->dev->dev, "Failed to turn the PLL off!\n");


 pllctl = ssb_chipco_pll_read(cc, SSB_PMU1_PLLCTL0);
 pllctl &= ~(SSB_PMU1_PLLCTL0_P1DIV | SSB_PMU1_PLLCTL0_P2DIV);
 pllctl |= ((u32)e->p1div << SSB_PMU1_PLLCTL0_P1DIV_SHIFT) & SSB_PMU1_PLLCTL0_P1DIV;
 pllctl |= ((u32)e->p2div << SSB_PMU1_PLLCTL0_P2DIV_SHIFT) & SSB_PMU1_PLLCTL0_P2DIV;
 ssb_chipco_pll_write(cc, SSB_PMU1_PLLCTL0, pllctl);


 pllctl = ssb_chipco_pll_read(cc, SSB_PMU1_PLLCTL2);
 pllctl &= ~(SSB_PMU1_PLLCTL2_NDIVINT | SSB_PMU1_PLLCTL2_NDIVMODE);
 pllctl |= ((u32)e->ndiv_int << SSB_PMU1_PLLCTL2_NDIVINT_SHIFT) & SSB_PMU1_PLLCTL2_NDIVINT;
 pllctl |= (1 << SSB_PMU1_PLLCTL2_NDIVMODE_SHIFT) & SSB_PMU1_PLLCTL2_NDIVMODE;
 ssb_chipco_pll_write(cc, SSB_PMU1_PLLCTL2, pllctl);


 pllctl = ssb_chipco_pll_read(cc, SSB_PMU1_PLLCTL3);
 pllctl &= ~SSB_PMU1_PLLCTL3_NDIVFRAC;
 pllctl |= ((u32)e->ndiv_frac << SSB_PMU1_PLLCTL3_NDIVFRAC_SHIFT) & SSB_PMU1_PLLCTL3_NDIVFRAC;
 ssb_chipco_pll_write(cc, SSB_PMU1_PLLCTL3, pllctl);


 if (buffer_strength) {
  pllctl = ssb_chipco_pll_read(cc, SSB_PMU1_PLLCTL5);
  pllctl &= ~SSB_PMU1_PLLCTL5_CLKDRV;
  pllctl |= (buffer_strength << SSB_PMU1_PLLCTL5_CLKDRV_SHIFT) & SSB_PMU1_PLLCTL5_CLKDRV;
  ssb_chipco_pll_write(cc, SSB_PMU1_PLLCTL5, pllctl);
 }


 pmuctl = chipco_read32(cc, SSB_CHIPCO_PMU_CTL);
 pmuctl &= ~(SSB_CHIPCO_PMU_CTL_ILP_DIV | SSB_CHIPCO_PMU_CTL_XTALFREQ);
 pmuctl |= ((((u32)e->freq + 127) / 128 - 1) << SSB_CHIPCO_PMU_CTL_ILP_DIV_SHIFT)
   & SSB_CHIPCO_PMU_CTL_ILP_DIV;
 pmuctl |= ((u32)e->xf << SSB_CHIPCO_PMU_CTL_XTALFREQ_SHIFT) & SSB_CHIPCO_PMU_CTL_XTALFREQ;
 chipco_write32(cc, SSB_CHIPCO_PMU_CTL, pmuctl);
}
