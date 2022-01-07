
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct SiS_Private {unsigned short PanelHT; int SiS_NeedRomModeData; unsigned short PanelVT; size_t PanelVCLKIdx315; TYPE_2__* SiS_VBVCLKData; TYPE_1__* SiS_VCLKData; void* PanelVRE; void* PanelVRS; void* PanelHRE; void* PanelHRS; } ;
struct TYPE_4__ {unsigned short CLOCK; unsigned char Part4_A; unsigned char Part4_B; } ;
struct TYPE_3__ {unsigned short CLOCK; unsigned char SR2B; unsigned char SR2C; } ;


 unsigned char* GetLCDStructPtr661 (struct SiS_Private*) ;
 void* SISGETROMW (int) ;
 size_t VCLK_CUSTOM_315 ;

__attribute__((used)) static void
SiS_GetLCDInfoBIOS(struct SiS_Private *SiS_Pr)
{
}
