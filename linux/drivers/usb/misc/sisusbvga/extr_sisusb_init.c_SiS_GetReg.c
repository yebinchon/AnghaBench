
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct SiS_Private {int sisusb; } ;


 int sisusb_getidxreg (int ,unsigned long,unsigned short,unsigned char*) ;

__attribute__((used)) static unsigned char
SiS_GetReg(struct SiS_Private *SiS_Pr, unsigned long port, unsigned short index)
{
 u8 data;

 sisusb_getidxreg(SiS_Pr->sisusb, port, index, &data);

 return data;
}
