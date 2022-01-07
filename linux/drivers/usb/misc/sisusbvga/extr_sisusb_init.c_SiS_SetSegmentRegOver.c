
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_P3c4; } ;


 int SiS_SetReg (struct SiS_Private*,int ,int,unsigned short) ;
 int SiS_SetSegmentReg (struct SiS_Private*,unsigned short) ;

__attribute__((used)) static void
SiS_SetSegmentRegOver(struct SiS_Private *SiS_Pr, unsigned short value)
{
 unsigned short temp = value >> 8;

 temp &= 0x07;
 temp |= (temp << 4);
 SiS_SetReg(SiS_Pr, SiS_Pr->SiS_P3c4, 0x1d, temp);
 SiS_SetSegmentReg(SiS_Pr, value);
}
