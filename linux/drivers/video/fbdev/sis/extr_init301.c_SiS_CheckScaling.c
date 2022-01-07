
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_VBInfo; int UsePanelScaler; int SiS_LCDInfo; } ;


 int DontExpandLCD ;
 int SetCRT2ToLCD ;

__attribute__((used)) static void
SiS_CheckScaling(struct SiS_Private *SiS_Pr, unsigned short resinfo,
   const unsigned char *nonscalingmodes)
{
   int i = 0;
   while(nonscalingmodes[i] != 0xff) {
      if(nonscalingmodes[i++] == resinfo) {
  if((SiS_Pr->SiS_VBInfo & SetCRT2ToLCD) ||
     (SiS_Pr->UsePanelScaler == -1)) {
     SiS_Pr->SiS_LCDInfo |= DontExpandLCD;
  }
  break;
      }
   }
}
