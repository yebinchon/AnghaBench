
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar ;
typedef int PortAddr ;


 int AscGetChipControl (int ) ;
 int AscGetChipStatus (int ) ;
 int AscSetChipControl (int ,int) ;
 int AscSetChipIH (int ,int ) ;
 int CC_DIAG ;
 int CC_HALT ;
 int CC_SINGLE_STEP ;
 int CC_TEST ;
 int CSW_HALTED ;
 int INS_HALT ;
 int INS_RFLAG_WTM ;

__attribute__((used)) static bool AscStopChip(PortAddr iop_base)
{
 uchar cc_val;

 cc_val =
     AscGetChipControl(iop_base) &
     (~(CC_SINGLE_STEP | CC_TEST | CC_DIAG));
 AscSetChipControl(iop_base, (uchar)(cc_val | CC_HALT));
 AscSetChipIH(iop_base, INS_HALT);
 AscSetChipIH(iop_base, INS_RFLAG_WTM);
 if ((AscGetChipStatus(iop_base) & CSW_HALTED) == 0) {
  return 0;
 }
 return 1;
}
