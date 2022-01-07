
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int dummy; } ;


 int SiS_ResetSegmentReg (struct SiS_Private*) ;
 int SiS_ResetSegmentRegOver (struct SiS_Private*) ;

__attribute__((used)) static void SiS_ResetSegmentRegisters(struct SiS_Private *SiS_Pr)
{
 SiS_ResetSegmentReg(SiS_Pr);
 SiS_ResetSegmentRegOver(SiS_Pr);
}
