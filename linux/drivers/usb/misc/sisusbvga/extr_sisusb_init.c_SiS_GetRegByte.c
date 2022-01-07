
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct SiS_Private {int sisusb; } ;


 int sisusb_getreg (int ,unsigned long,unsigned char*) ;

__attribute__((used)) static unsigned char
SiS_GetRegByte(struct SiS_Private *SiS_Pr, unsigned long port)
{
 u8 data;

 sisusb_getreg(SiS_Pr->sisusb, port, &data);

 return data;
}
