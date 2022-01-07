
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int dummy; } ;


 int SiS_SetSegmentRegOver (struct SiS_Private*,int ) ;

__attribute__((used)) static void SiS_ResetSegmentRegOver(struct SiS_Private *SiS_Pr)
{
 SiS_SetSegmentRegOver(SiS_Pr, 0);
}
