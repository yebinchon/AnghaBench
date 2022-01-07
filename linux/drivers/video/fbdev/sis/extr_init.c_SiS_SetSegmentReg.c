
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int dummy; } ;


 int SiS_SetSegRegLower (struct SiS_Private*,unsigned short) ;
 int SiS_SetSegRegUpper (struct SiS_Private*,unsigned short) ;

__attribute__((used)) static void
SiS_SetSegmentReg(struct SiS_Private *SiS_Pr, unsigned short value)
{
   SiS_SetSegRegLower(SiS_Pr, value);
   SiS_SetSegRegUpper(SiS_Pr, value);
}
