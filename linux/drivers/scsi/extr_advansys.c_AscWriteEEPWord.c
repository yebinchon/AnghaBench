
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ushort ;
typedef int uchar ;
typedef int PortAddr ;


 scalar_t__ ASC_EEP_CMD_WRITE ;
 int ASC_EEP_CMD_WRITE_ABLE ;
 int ASC_EEP_CMD_WRITE_DISABLE ;
 scalar_t__ AscReadEEPWord (int ,int) ;
 int AscWaitEEPRead () ;
 int AscWaitEEPWrite () ;
 int AscWriteEEPCmdReg (int ,int) ;
 int AscWriteEEPDataReg (int ,scalar_t__) ;

__attribute__((used)) static ushort AscWriteEEPWord(PortAddr iop_base, uchar addr, ushort word_val)
{
 ushort read_wval;

 read_wval = AscReadEEPWord(iop_base, addr);
 if (read_wval != word_val) {
  AscWriteEEPCmdReg(iop_base, ASC_EEP_CMD_WRITE_ABLE);
  AscWaitEEPRead();
  AscWriteEEPDataReg(iop_base, word_val);
  AscWaitEEPRead();
  AscWriteEEPCmdReg(iop_base,
      (uchar)((uchar)ASC_EEP_CMD_WRITE | addr));
  AscWaitEEPWrite();
  AscWriteEEPCmdReg(iop_base, ASC_EEP_CMD_WRITE_DISABLE);
  AscWaitEEPRead();
  return (AscReadEEPWord(iop_base, addr));
 }
 return (read_wval);
}
