
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int SiS_MyCR63; } ;



__attribute__((used)) static void SiS_GetSysFlags(struct SiS_Private *SiS_Pr)
{
 SiS_Pr->SiS_MyCR63 = 0x63;
}
