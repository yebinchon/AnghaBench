
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_P3da; int SiS_P3d4; int SiS_P3c4; } ;


 int SiS_GetReg (int ,int) ;
 int SiS_GetRegByte (int ) ;

void
SiS_WaitRetrace1(struct SiS_Private *SiS_Pr)
{
   unsigned short watchdog;

   if(SiS_GetReg(SiS_Pr->SiS_P3c4,0x1f) & 0xc0) return;
   if(!(SiS_GetReg(SiS_Pr->SiS_P3d4,0x17) & 0x80)) return;

   watchdog = 65535;
   while((SiS_GetRegByte(SiS_Pr->SiS_P3da) & 0x08) && --watchdog);
   watchdog = 65535;
   while((!(SiS_GetRegByte(SiS_Pr->SiS_P3da) & 0x08)) && --watchdog);
}
