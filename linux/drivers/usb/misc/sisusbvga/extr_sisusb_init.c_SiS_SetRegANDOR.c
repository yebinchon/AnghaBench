
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int sisusb; } ;


 int sisusb_setidxregandor (int ,unsigned long,unsigned short,unsigned short,unsigned short) ;

__attribute__((used)) static void
SiS_SetRegANDOR(struct SiS_Private *SiS_Pr, unsigned long port,
  unsigned short index, unsigned short DataAND,
  unsigned short DataOR)
{
 sisusb_setidxregandor(SiS_Pr->sisusb, port, index, DataAND, DataOR);
}
