
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_IF_DEF_CH70xx; } ;


 unsigned short SiS_GetCH700x (struct SiS_Private*,unsigned short) ;
 unsigned short SiS_GetCH701x (struct SiS_Private*,unsigned short) ;

__attribute__((used)) static
unsigned short
SiS_GetCH70xx(struct SiS_Private *SiS_Pr, unsigned short tempbx)
{
  if(SiS_Pr->SiS_IF_DEF_CH70xx == 1)
     return SiS_GetCH700x(SiS_Pr, tempbx);
  else
     return SiS_GetCH701x(SiS_Pr, tempbx);
}
