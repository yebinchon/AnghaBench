
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int SiS_UseOEM; } ;
struct sis_video_info {int currentvbflags; int rate_idx; scalar_t__ sisvga_engine; scalar_t__ chip; int curFSTN; int curDSTN; int vbflags; int vbflags2; int sisfb_dstn; int sisfb_fstn; size_t sisfb_mode_idx; int sisfb_useoem; TYPE_2__ SiS_Pr; int sisfb_nocrt2rate; } ;
struct TYPE_4__ {int rate_idx; } ;





 int SISCR ;
 int SISSR ;
 scalar_t__ SIS_300 ;
 scalar_t__ SIS_300_VGA ;
 scalar_t__ SIS_315_VGA ;
 scalar_t__ SIS_661 ;
 int SIS_DRIVER_MODE ;
 int SIS_SIMULTANEOUS_VIEW_ENABLE ;
 int SIS_VB_OUTPUT_COMPOSITE ;
 int SIS_VB_OUTPUT_CRT2 ;
 int SIS_VB_OUTPUT_DISABLE ;
 int SIS_VB_OUTPUT_LCD ;
 int SIS_VB_OUTPUT_SCART ;
 int SIS_VB_OUTPUT_SVIDEO ;
 int SiS_GetReg (int ,int) ;
 int SiS_SetEnableDstn (TYPE_2__*,int) ;
 int SiS_SetEnableFstn (TYPE_2__*,int) ;
 int SiS_SetReg (int ,int,int) ;
 int SiS_SetRegANDOR (int ,int,int,int) ;
 int TV_AVIDEO ;
 int TV_HIVISION ;
 int TV_NTSC ;
 int TV_NTSCJ ;
 int TV_PAL ;
 int TV_PALM ;
 int TV_PALN ;
 int TV_SCART ;
 int TV_SVIDEO ;
 int TV_YPBPR ;
 int TV_YPBPR1080I ;
 int TV_YPBPR525P ;
 int TV_YPBPR750P ;
 int TV_YPBPRALL ;
 int VB2_SISHIVISIONBRIDGE ;
 int VB2_SISYPBPRBRIDGE ;
 int VB_DISPTYPE_DISP2 ;
 int VB_VIDEOBRIDGE ;
 TYPE_1__* sisbios_mode ;
 int sisfb_check_engine_and_sync (struct sis_video_info*) ;

__attribute__((used)) static void
sisfb_pre_setmode(struct sis_video_info *ivideo)
{
 u8 cr30 = 0, cr31 = 0, cr33 = 0, cr35 = 0, cr38 = 0;
 int tvregnum = 0;

 ivideo->currentvbflags &= (VB_VIDEOBRIDGE | VB_DISPTYPE_DISP2);

 SiS_SetReg(SISSR, 0x05, 0x86);

 cr31 = SiS_GetReg(SISCR, 0x31);
 cr31 &= ~0x60;
 cr31 |= 0x04;

 cr33 = ivideo->rate_idx & 0x0F;
 SiS_SetEnableDstn(&ivideo->SiS_Pr, 0);
 SiS_SetEnableFstn(&ivideo->SiS_Pr, 0);
 ivideo->curFSTN = ivideo->curDSTN = 0;

 switch(ivideo->currentvbflags & VB_DISPTYPE_DISP2) {

    case 129:
       cr38 &= ~0xc0;
       if((ivideo->vbflags & TV_YPBPR) && (ivideo->vbflags2 & VB2_SISYPBPRBRIDGE)) {
       } else if((ivideo->vbflags & TV_HIVISION) &&
    (ivideo->vbflags2 & VB2_SISHIVISIONBRIDGE)) {
   if(ivideo->chip >= SIS_661) {
      cr38 |= 0x04;
      cr35 |= 0x60;
   } else {
      cr30 |= 0x80;
   }
   cr30 |= SIS_SIMULTANEOUS_VIEW_ENABLE;
   cr31 |= 0x01;
   cr35 |= 0x01;
   ivideo->currentvbflags |= TV_HIVISION;
       } else if(ivideo->vbflags & TV_SCART) {
   cr30 = (SIS_VB_OUTPUT_SCART | SIS_SIMULTANEOUS_VIEW_ENABLE);
   cr31 |= 0x01;
   cr35 |= 0x01;
   ivideo->currentvbflags |= TV_SCART;
       } else {
   if(ivideo->vbflags & TV_SVIDEO) {
      cr30 = (SIS_VB_OUTPUT_SVIDEO | SIS_SIMULTANEOUS_VIEW_ENABLE);
      ivideo->currentvbflags |= TV_SVIDEO;
   }
   if(ivideo->vbflags & TV_AVIDEO) {
      cr30 = (SIS_VB_OUTPUT_COMPOSITE | SIS_SIMULTANEOUS_VIEW_ENABLE);
      ivideo->currentvbflags |= TV_AVIDEO;
   }
       }
       cr31 |= SIS_DRIVER_MODE;

       if(ivideo->vbflags & (TV_AVIDEO | TV_SVIDEO)) {
   if(ivideo->vbflags & TV_PAL) {
      cr31 |= 0x01; cr35 |= 0x01;
      ivideo->currentvbflags |= TV_PAL;
      if(ivideo->vbflags & TV_PALM) {
         cr38 |= 0x40; cr35 |= 0x04;
         ivideo->currentvbflags |= TV_PALM;
      } else if(ivideo->vbflags & TV_PALN) {
         cr38 |= 0x80; cr35 |= 0x08;
         ivideo->currentvbflags |= TV_PALN;
      }
   } else {
      cr31 &= ~0x01; cr35 &= ~0x01;
      ivideo->currentvbflags |= TV_NTSC;
      if(ivideo->vbflags & TV_NTSCJ) {
         cr38 |= 0x40; cr35 |= 0x02;
         ivideo->currentvbflags |= TV_NTSCJ;
      }
   }
       }
       break;

    case 130:
       cr30 = (SIS_VB_OUTPUT_LCD | SIS_SIMULTANEOUS_VIEW_ENABLE);
       cr31 |= SIS_DRIVER_MODE;
       SiS_SetEnableDstn(&ivideo->SiS_Pr, ivideo->sisfb_dstn);
       SiS_SetEnableFstn(&ivideo->SiS_Pr, ivideo->sisfb_fstn);
       ivideo->curFSTN = ivideo->sisfb_fstn;
       ivideo->curDSTN = ivideo->sisfb_dstn;
       break;

    case 128:
       cr30 = (SIS_VB_OUTPUT_CRT2 | SIS_SIMULTANEOUS_VIEW_ENABLE);
       cr31 |= SIS_DRIVER_MODE;
       if(ivideo->sisfb_nocrt2rate) {
   cr33 |= (sisbios_mode[ivideo->sisfb_mode_idx].rate_idx << 4);
       } else {
   cr33 |= ((ivideo->rate_idx & 0x0F) << 4);
       }
       break;

    default:
       cr30 = 0x00;
       cr31 |= (SIS_DRIVER_MODE | SIS_VB_OUTPUT_DISABLE);
 }

 SiS_SetReg(SISCR, 0x30, cr30);
 SiS_SetReg(SISCR, 0x33, cr33);

 if(ivideo->chip >= SIS_661) {






 } else if(ivideo->chip != SIS_300) {
    SiS_SetReg(SISCR, tvregnum, cr38);
 }
 SiS_SetReg(SISCR, 0x31, cr31);

 ivideo->SiS_Pr.SiS_UseOEM = ivideo->sisfb_useoem;

 sisfb_check_engine_and_sync(ivideo);
}
