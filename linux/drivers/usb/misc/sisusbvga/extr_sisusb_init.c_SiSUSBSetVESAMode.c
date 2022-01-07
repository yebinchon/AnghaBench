
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct SiS_Private {TYPE_1__* SiS_EModeIDTable; } ;
struct TYPE_2__ {int Ext_ModeID; unsigned short Ext_VESAID; } ;


 int SiSUSBSetMode (struct SiS_Private*,unsigned short) ;
 int SiSUSB_InitPtr (struct SiS_Private*) ;

int SiSUSBSetVESAMode(struct SiS_Private *SiS_Pr, unsigned short VModeNo)
{
 unsigned short ModeNo = 0;
 int i;

 SiSUSB_InitPtr(SiS_Pr);

 if (VModeNo == 0x03) {

  ModeNo = 0x03;

 } else {

  i = 0;
  do {

   if (SiS_Pr->SiS_EModeIDTable[i].Ext_VESAID == VModeNo) {
    ModeNo = SiS_Pr->SiS_EModeIDTable[i].Ext_ModeID;
    break;
   }

  } while (SiS_Pr->SiS_EModeIDTable[i++].Ext_ModeID != 0xff);

 }

 if (!ModeNo)
  return 0;

 return SiSUSBSetMode(SiS_Pr, ModeNo);
}
