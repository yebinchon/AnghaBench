
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {scalar_t__ ChipType; } ;


 int InitTo300Pointer (struct SiS_Private*) ;
 int InitTo310Pointer (struct SiS_Private*) ;
 scalar_t__ SIS_315H ;

bool
SiSInitPtr(struct SiS_Private *SiS_Pr)
{
   if(SiS_Pr->ChipType < SIS_315H) {



      return 0;

   } else {



      return 0;

   }
   return 1;
}
