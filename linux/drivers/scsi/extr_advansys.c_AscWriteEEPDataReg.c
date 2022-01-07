
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ushort ;
typedef int PortAddr ;


 int ASC_EEP_MAX_RETRY ;
 scalar_t__ AscGetChipEEPData (int ) ;
 int AscSetChipEEPData (int ,scalar_t__) ;
 int mdelay (int) ;

__attribute__((used)) static int AscWriteEEPDataReg(PortAddr iop_base, ushort data_reg)
{
 ushort read_back;
 int retry;

 retry = 0;
 while (1) {
  AscSetChipEEPData(iop_base, data_reg);
  mdelay(1);
  read_back = AscGetChipEEPData(iop_base);
  if (read_back == data_reg) {
   return (1);
  }
  if (retry++ > ASC_EEP_MAX_RETRY) {
   return (0);
  }
 }
}
