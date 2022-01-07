
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sis_video_info {int tvxpos; int currentvbflags; int vbflags2; int tvx; int chronteltype; int p2_1f; int p2_20; int p2_2b; int p2_42; int p2_43; int SiS_Pr; int modechanged; scalar_t__ sisfblocked; } ;


 int CRT2_TV ;
 int SISPART2 ;
 int SISSR ;
 int SiS_SetCH700x (int *,int,int) ;
 int SiS_SetCH70xxANDOR (int *,int,int,int) ;
 int SiS_SetReg (int ,int,int) ;
 int SiS_SetRegANDOR (int ,int,int,int) ;
 int VB2_CHRONTEL ;
 int VB2_SISBRIDGE ;

__attribute__((used)) static void
sisfb_set_TVxposoffset(struct sis_video_info *ivideo, int val)
{
 if(val > 32) val = 32;
 if(val < -32) val = -32;
 ivideo->tvxpos = val;

 if(ivideo->sisfblocked) return;
 if(!ivideo->modechanged) return;

 if(ivideo->currentvbflags & CRT2_TV) {

  if(ivideo->vbflags2 & VB2_CHRONTEL) {

   int x = ivideo->tvx;

   switch(ivideo->chronteltype) {
   case 1:
    x += val;
    if(x < 0) x = 0;
    SiS_SetReg(SISSR, 0x05, 0x86);
    SiS_SetCH700x(&ivideo->SiS_Pr, 0x0a, (x & 0xff));
    SiS_SetCH70xxANDOR(&ivideo->SiS_Pr, 0x08, ((x & 0x0100) >> 7), 0xFD);
    break;
   case 2:

    break;
   }

  } else if(ivideo->vbflags2 & VB2_SISBRIDGE) {

   u8 p2_1f,p2_20,p2_2b,p2_42,p2_43;
   unsigned short temp;

   p2_1f = ivideo->p2_1f;
   p2_20 = ivideo->p2_20;
   p2_2b = ivideo->p2_2b;
   p2_42 = ivideo->p2_42;
   p2_43 = ivideo->p2_43;

   temp = p2_1f | ((p2_20 & 0xf0) << 4);
   temp += (val * 2);
   p2_1f = temp & 0xff;
   p2_20 = (temp & 0xf00) >> 4;
   p2_2b = ((p2_2b & 0x0f) + (val * 2)) & 0x0f;
   temp = p2_43 | ((p2_42 & 0xf0) << 4);
   temp += (val * 2);
   p2_43 = temp & 0xff;
   p2_42 = (temp & 0xf00) >> 4;
   SiS_SetReg(SISPART2, 0x1f, p2_1f);
   SiS_SetRegANDOR(SISPART2, 0x20, 0x0F, p2_20);
   SiS_SetRegANDOR(SISPART2, 0x2b, 0xF0, p2_2b);
   SiS_SetRegANDOR(SISPART2, 0x42, 0x0F, p2_42);
   SiS_SetReg(SISPART2, 0x43, p2_43);
  }
 }
}
