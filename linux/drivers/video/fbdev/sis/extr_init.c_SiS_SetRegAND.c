
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int SISIOADDRESS ;


 int SiS_GetReg (int ,int ) ;
 int SiS_SetReg (int ,int ,int ) ;

void
SiS_SetRegAND(SISIOADDRESS Port, u8 Index, u8 DataAND)
{
   u8 temp;

   temp = SiS_GetReg(Port, Index);
   temp &= DataAND;
   SiS_SetReg(Port, Index, temp);
}
