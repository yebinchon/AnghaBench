
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_IF_DEF_CH70xx; } ;


 int SiS_SetCH700x (struct SiS_Private*,unsigned short,unsigned char) ;
 int SiS_SetCH701x (struct SiS_Private*,unsigned short,unsigned char) ;

__attribute__((used)) static
void
SiS_SetCH70xx(struct SiS_Private *SiS_Pr, unsigned short reg, unsigned char val)
{
  if(SiS_Pr->SiS_IF_DEF_CH70xx == 1)
     SiS_SetCH700x(SiS_Pr, reg, val);
  else
     SiS_SetCH701x(SiS_Pr, reg, val);
}
