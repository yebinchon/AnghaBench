
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PortAddr ;


 int ASCV_STOP_CODE_B ;
 int ASC_STOP_ACK_RISC_STOP ;
 int ASC_STOP_REQ_RISC_STOP ;
 int AscReadLramByte (int ,int ) ;
 int AscWriteLramByte (int ,int ,int ) ;
 int mdelay (int) ;

__attribute__((used)) static int AscStopQueueExe(PortAddr iop_base)
{
 int count = 0;

 if (AscReadLramByte(iop_base, ASCV_STOP_CODE_B) == 0) {
  AscWriteLramByte(iop_base, ASCV_STOP_CODE_B,
     ASC_STOP_REQ_RISC_STOP);
  do {
   if (AscReadLramByte(iop_base, ASCV_STOP_CODE_B) &
       ASC_STOP_ACK_RISC_STOP) {
    return (1);
   }
   mdelay(100);
  } while (count++ < 20);
 }
 return (0);
}
