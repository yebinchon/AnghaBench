
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar ;
typedef int PortAddr ;


 scalar_t__ AscHostReqRiscHalt (int ) ;
 int AscSetChipSynRegAtID (int ,int ,int ) ;
 int AscStartChip (int ) ;

__attribute__((used)) static bool
AscSetRunChipSynRegAtID(PortAddr iop_base, uchar tid_no, uchar sdtr_data)
{
 bool sta = 0;

 if (AscHostReqRiscHalt(iop_base)) {
  sta = AscSetChipSynRegAtID(iop_base, tid_no, sdtr_data);
  AscStartChip(iop_base);
 }
 return sta;
}
