
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int dummy; } ;


 unsigned short SiS_GetCH70xx (struct SiS_Private*,unsigned short) ;
 int SiS_SetCH70xx (struct SiS_Private*,unsigned short,unsigned short) ;

void
SiS_SetCH70xxANDOR(struct SiS_Private *SiS_Pr, unsigned short reg,
  unsigned char myor, unsigned short myand)
{
  unsigned short tempbl;

  tempbl = (SiS_GetCH70xx(SiS_Pr, (reg & 0xFF)) & myand) | myor;
  SiS_SetCH70xx(SiS_Pr, reg, tempbl);
}
