
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_short ;
struct amifb_par {int bplcon0; int beamcon0; int htotal; int fmode; scalar_t__ hsstop; int vsstop; int vsstrt; int vbstop; int vbstrt; int vtotal; int hcenter; int hsstrt; int hbstop; int hbstrt; int bplcon3; } ;
struct TYPE_4__ {int ** list; } ;
struct TYPE_3__ {int bplcon0; int bplcon2; int bplcon4; int beamcon0; int vposr; int vposw; int * cop2lc; int fmode; int vsstop; int vsstrt; int vbstop; int vbstrt; int vtotal; int hcenter; int hsstop; int hsstrt; int hbstop; int hbstrt; int htotal; int bplcon3; } ;


 int BMC0_VARBEAMEN ;
 int BPC0_LACE ;
 int BPC2_KILLEHB ;
 int BPC2_PF1P2 ;
 int BPC2_PF2P2 ;
 int BPC4_ESPRM4 ;
 int BPC4_OSPRM4 ;
 scalar_t__ IS_AGA ;
 scalar_t__ IS_OCS ;
 scalar_t__ ZTWO_PADDR (int ) ;
 int amiga_audio_min_period ;
 TYPE_2__ copdisplay ;
 size_t currentcop ;
 TYPE_1__ custom ;
 int div16 (int ) ;
 int hbstop2hw (int ) ;
 int hbstrt2hw (int ) ;
 int hcenter2hw (int ) ;
 int hsstop2hw (scalar_t__) ;
 int hsstrt2hw (int ) ;
 int htotal2hw (int ) ;
 int is_lace ;
 int vbstop2hw (int ) ;
 int vbstrt2hw (int ) ;
 int vsstop2hw (int ) ;
 int vsstrt2hw (int ) ;
 int vtotal2hw (int ) ;

__attribute__((used)) static void ami_init_display(const struct amifb_par *par)
{
 int i;

 custom.bplcon0 = par->bplcon0 & ~BPC0_LACE;
 custom.bplcon2 = (IS_OCS ? 0 : BPC2_KILLEHB) | BPC2_PF2P2 | BPC2_PF1P2;
 if (!IS_OCS) {
  custom.bplcon3 = par->bplcon3;
  if (IS_AGA)
   custom.bplcon4 = BPC4_ESPRM4 | BPC4_OSPRM4;
  if (par->beamcon0 & BMC0_VARBEAMEN) {
   custom.htotal = htotal2hw(par->htotal);
   custom.hbstrt = hbstrt2hw(par->hbstrt);
   custom.hbstop = hbstop2hw(par->hbstop);
   custom.hsstrt = hsstrt2hw(par->hsstrt);
   custom.hsstop = hsstop2hw(par->hsstop);
   custom.hcenter = hcenter2hw(par->hcenter);
   custom.vtotal = vtotal2hw(par->vtotal);
   custom.vbstrt = vbstrt2hw(par->vbstrt);
   custom.vbstop = vbstop2hw(par->vbstop);
   custom.vsstrt = vsstrt2hw(par->vsstrt);
   custom.vsstop = vsstop2hw(par->vsstop);
  }
 }
 if (!IS_OCS || par->hsstop)
  custom.beamcon0 = par->beamcon0;
 if (IS_AGA)
  custom.fmode = par->fmode;





 amiga_audio_min_period = div16(par->htotal);

 is_lace = par->bplcon0 & BPC0_LACE ? 1 : 0;

 if (is_lace) {
  i = custom.vposr >> 15;
 } else {
  custom.vposw = custom.vposr | 0x8000;
  i = 1;
 }




 custom.cop2lc = (u_short *)ZTWO_PADDR(copdisplay.list[currentcop][i]);
}
