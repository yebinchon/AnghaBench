
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar ;
typedef int PortAddr ;


 int ASCV_STOP_CODE_B ;
 int ASC_STOP_HOST_REQ_RISC_HALT ;
 int ASC_STOP_REQ_RISC_STOP ;
 scalar_t__ AscIsChipHalted (int ) ;
 int AscReadLramByte (int ,int ) ;
 int AscWriteLramByte (int ,int ,int) ;
 int mdelay (int) ;

__attribute__((used)) static bool AscHostReqRiscHalt(PortAddr iop_base)
{
 int count = 0;
 bool sta = 0;
 uchar saved_stop_code;

 if (AscIsChipHalted(iop_base))
  return 1;
 saved_stop_code = AscReadLramByte(iop_base, ASCV_STOP_CODE_B);
 AscWriteLramByte(iop_base, ASCV_STOP_CODE_B,
    ASC_STOP_HOST_REQ_RISC_HALT | ASC_STOP_REQ_RISC_STOP);
 do {
  if (AscIsChipHalted(iop_base)) {
   sta = 1;
   break;
  }
  mdelay(100);
 } while (count++ < 20);
 AscWriteLramByte(iop_base, ASCV_STOP_CODE_B, saved_stop_code);
 return sta;
}
