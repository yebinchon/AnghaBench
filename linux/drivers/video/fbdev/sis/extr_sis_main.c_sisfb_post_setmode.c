
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int SiS_MyCR63; } ;
struct sis_video_info {int modechanged; int vbflags2; scalar_t__ sisvga_engine; int currentvbflags; int chronteltype; int tvx; int tvy; scalar_t__ engineok; scalar_t__ accel; scalar_t__ tvypos; scalar_t__ tvxpos; TYPE_1__ SiS_Pr; void* p2_02; void* p2_01; void* p2_43; void* p2_42; void* p2_2b; void* p2_20; void* p2_1f; scalar_t__ sisfb_crt1off; } ;


 int CRT2_TV ;
 int IND_SIS_RAMDAC_CONTROL ;
 int SISCR ;
 int SISPART2 ;
 int SISSR ;
 scalar_t__ SIS_300_VGA ;
 scalar_t__ SIS_315_VGA ;
 int SiS_GetCH700x (TYPE_1__*,int) ;
 void* SiS_GetReg (int ,int) ;
 int SiS_SetReg (int ,int,int) ;
 int SiS_SetRegAND (int ,int ,int) ;
 int SiS_SetRegANDOR (int ,int,int,int) ;
 int VB2_CHRONTEL ;
 int VB2_SISBRIDGE ;
 int VB2_VIDEOBRIDGE ;
 int VB_DISPTYPE_CRT1 ;
 int VB_DISPTYPE_CRT2 ;
 int VB_MIRROR_MODE ;
 int VB_SINGLE_MODE ;
 scalar_t__ sisfb_bridgeisslave (struct sis_video_info*) ;
 int sisfb_check_engine_and_sync (struct sis_video_info*) ;
 int sisfb_engine_init (struct sis_video_info*) ;
 int sisfb_fixup_SR11 (struct sis_video_info*) ;
 int sisfb_set_TVxposoffset (struct sis_video_info*,scalar_t__) ;
 int sisfb_set_TVyposoffset (struct sis_video_info*,scalar_t__) ;

__attribute__((used)) static void
sisfb_post_setmode(struct sis_video_info *ivideo)
{
 bool crt1isoff = 0;
 bool doit = 1;







 SiS_SetReg(SISSR, 0x05, 0x86);






 ivideo->modechanged = 1;


 if(ivideo->vbflags2 & VB2_VIDEOBRIDGE) {
  if(sisfb_bridgeisslave(ivideo)) doit = 0;
 } else
  ivideo->sisfb_crt1off = 0;
 if(crt1isoff) {
  ivideo->currentvbflags &= ~VB_DISPTYPE_CRT1;
  ivideo->currentvbflags |= VB_SINGLE_MODE;
 } else {
  ivideo->currentvbflags |= VB_DISPTYPE_CRT1;
  if(ivideo->currentvbflags & VB_DISPTYPE_CRT2) {
   ivideo->currentvbflags |= VB_MIRROR_MODE;
  } else {
   ivideo->currentvbflags |= VB_SINGLE_MODE;
  }
 }

 SiS_SetRegAND(SISSR, IND_SIS_RAMDAC_CONTROL, ~0x04);

 if(ivideo->currentvbflags & CRT2_TV) {
  if(ivideo->vbflags2 & VB2_SISBRIDGE) {
   ivideo->p2_1f = SiS_GetReg(SISPART2, 0x1f);
   ivideo->p2_20 = SiS_GetReg(SISPART2, 0x20);
   ivideo->p2_2b = SiS_GetReg(SISPART2, 0x2b);
   ivideo->p2_42 = SiS_GetReg(SISPART2, 0x42);
   ivideo->p2_43 = SiS_GetReg(SISPART2, 0x43);
   ivideo->p2_01 = SiS_GetReg(SISPART2, 0x01);
   ivideo->p2_02 = SiS_GetReg(SISPART2, 0x02);
  } else if(ivideo->vbflags2 & VB2_CHRONTEL) {
   if(ivideo->chronteltype == 1) {
    ivideo->tvx = SiS_GetCH700x(&ivideo->SiS_Pr, 0x0a);
    ivideo->tvx |= (((SiS_GetCH700x(&ivideo->SiS_Pr, 0x08) & 0x02) >> 1) << 8);
    ivideo->tvy = SiS_GetCH700x(&ivideo->SiS_Pr, 0x0b);
    ivideo->tvy |= ((SiS_GetCH700x(&ivideo->SiS_Pr, 0x08) & 0x01) << 8);
   }
  }
 }

 if(ivideo->tvxpos) {
  sisfb_set_TVxposoffset(ivideo, ivideo->tvxpos);
 }
 if(ivideo->tvypos) {
  sisfb_set_TVyposoffset(ivideo, ivideo->tvypos);
 }


 sisfb_check_engine_and_sync(ivideo);


 if(ivideo->accel) {
  sisfb_engine_init(ivideo);
 } else {
  ivideo->engineok = 0;
 }
}
