
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int dummy; } ;


 unsigned short SiS_PrepareReadDDC (struct SiS_Private*) ;
 scalar_t__ SiS_WriteDABDDC (struct SiS_Private*) ;

__attribute__((used)) static unsigned short
SiS_PrepareDDC(struct SiS_Private *SiS_Pr)
{
   if(SiS_WriteDABDDC(SiS_Pr)) SiS_WriteDABDDC(SiS_Pr);
   if(SiS_PrepareReadDDC(SiS_Pr)) return (SiS_PrepareReadDDC(SiS_Pr));
   return 0;
}
