
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct SiS_Private {unsigned char* VirtualRomBase; scalar_t__ ChipType; int SiS_VBType; int SiS_IF_DEF_LVDS; scalar_t__ SiS_IF_DEF_CH70xx; scalar_t__ SiS_CustomT; TYPE_2__* SiS_PanelDelayTbl; int SiS_P3d4; scalar_t__ SiS_ROMNew; scalar_t__ SiS_UseROM; TYPE_1__* SiS_PanelDelayTblLVDS; int SiS_P3c4; } ;
struct TYPE_4__ {unsigned short* timer; } ;
struct TYPE_3__ {unsigned short* timer; } ;


 scalar_t__ CUT_CLEVO1400 ;
 scalar_t__ CUT_COMPAQ1280 ;
 scalar_t__ SIS_315H ;
 scalar_t__ SIS_315PRO ;
 scalar_t__ SIS_330 ;
 scalar_t__ SIS_661 ;
 int SiS_DDC2Delay (struct SiS_Private*,unsigned short) ;
 int SiS_GetReg (int ,int) ;
 int SiS_ShortDelay (struct SiS_Private*,unsigned short) ;
 int VB_SIS301 ;
 int VB_SISVB ;

__attribute__((used)) static void
SiS_PanelDelay(struct SiS_Private *SiS_Pr, unsigned short DelayTime)
{





   if(SiS_Pr->ChipType < SIS_315H) {
   } else {
   }
}
