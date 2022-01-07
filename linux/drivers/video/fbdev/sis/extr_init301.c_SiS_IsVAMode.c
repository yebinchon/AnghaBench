
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {scalar_t__ ChipType; int SiS_P3d4; } ;


 unsigned short EnableDualEdge ;
 scalar_t__ SIS_315H ;
 unsigned short SetToLCDA ;
 unsigned short SiS_GetReg (int ,int) ;

bool
SiS_IsVAMode(struct SiS_Private *SiS_Pr)
{
   return 0;
}
