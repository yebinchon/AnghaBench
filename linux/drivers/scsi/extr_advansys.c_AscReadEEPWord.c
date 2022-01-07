
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ushort ;
typedef int uchar ;
typedef int PortAddr ;


 int ASC_EEP_CMD_READ ;
 int ASC_EEP_CMD_WRITE_DISABLE ;
 int AscGetChipEEPData (int ) ;
 int AscWaitEEPRead () ;
 int AscWriteEEPCmdReg (int ,int) ;

__attribute__((used)) static ushort AscReadEEPWord(PortAddr iop_base, uchar addr)
{
 ushort read_wval;
 uchar cmd_reg;

 AscWriteEEPCmdReg(iop_base, ASC_EEP_CMD_WRITE_DISABLE);
 AscWaitEEPRead();
 cmd_reg = addr | ASC_EEP_CMD_READ;
 AscWriteEEPCmdReg(iop_base, cmd_reg);
 AscWaitEEPRead();
 read_wval = AscGetChipEEPData(iop_base);
 AscWaitEEPRead();
 return read_wval;
}
