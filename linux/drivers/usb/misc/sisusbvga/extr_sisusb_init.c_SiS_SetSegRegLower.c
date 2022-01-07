
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_P3cd; int SiS_P3cb; } ;


 int SiS_GetRegByte (struct SiS_Private*,int ) ;
 int SiS_SetRegByte (struct SiS_Private*,int ,unsigned short) ;

__attribute__((used)) static void SiS_SetSegRegLower(struct SiS_Private *SiS_Pr, unsigned short value)
{
 unsigned short temp;

 value &= 0x00ff;
 temp = SiS_GetRegByte(SiS_Pr, SiS_Pr->SiS_P3cb) & 0xf0;
 temp |= (value >> 4);
 SiS_SetRegByte(SiS_Pr, SiS_Pr->SiS_P3cb, temp);
 temp = SiS_GetRegByte(SiS_Pr, SiS_Pr->SiS_P3cd) & 0xf0;
 temp |= (value & 0x0f);
 SiS_SetRegByte(SiS_Pr, SiS_Pr->SiS_P3cd, temp);
}
