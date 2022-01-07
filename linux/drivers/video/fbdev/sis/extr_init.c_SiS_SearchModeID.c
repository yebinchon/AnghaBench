
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct SiS_Private {unsigned char SiS_VGAINFO; TYPE_2__* SiS_EModeIDTable; TYPE_1__* SiS_SModeIDTable; } ;
struct TYPE_4__ {unsigned short Ext_ModeID; } ;
struct TYPE_3__ {unsigned short St_ModeID; } ;



bool
SiS_SearchModeID(struct SiS_Private *SiS_Pr, unsigned short *ModeNo,
  unsigned short *ModeIdIndex)
{
   unsigned char VGAINFO = SiS_Pr->SiS_VGAINFO;

   if((*ModeNo) <= 0x13) {

      if((*ModeNo) <= 0x05) (*ModeNo) |= 0x01;

      for((*ModeIdIndex) = 0; ;(*ModeIdIndex)++) {
  if(SiS_Pr->SiS_SModeIDTable[(*ModeIdIndex)].St_ModeID == (*ModeNo)) break;
  if(SiS_Pr->SiS_SModeIDTable[(*ModeIdIndex)].St_ModeID == 0xFF) return 0;
      }

      if((*ModeNo) == 0x07) {
   if(VGAINFO & 0x10) (*ModeIdIndex)++;

      }
      if((*ModeNo) <= 0x03) {
  if(!(VGAINFO & 0x80)) (*ModeIdIndex)++;
  if(VGAINFO & 0x10) (*ModeIdIndex)++;

      }


   } else {

      for((*ModeIdIndex) = 0; ;(*ModeIdIndex)++) {
  if(SiS_Pr->SiS_EModeIDTable[(*ModeIdIndex)].Ext_ModeID == (*ModeNo)) break;
  if(SiS_Pr->SiS_EModeIDTable[(*ModeIdIndex)].Ext_ModeID == 0xFF) return 0;
      }

   }
   return 1;
}
