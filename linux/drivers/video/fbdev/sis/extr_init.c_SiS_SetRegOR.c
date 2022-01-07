
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int SISIOADDRESS ;


 int SiS_GetReg (int ,int ) ;
 int SiS_SetReg (int ,int ,int ) ;

void
SiS_SetRegOR(SISIOADDRESS Port, u8 Index, u8 DataOR)
{
   u8 temp;

   temp = SiS_GetReg(Port, Index);
   temp |= DataOR;
   SiS_SetReg(Port, Index, temp);
}
