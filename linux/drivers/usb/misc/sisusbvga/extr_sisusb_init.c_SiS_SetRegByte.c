
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SiS_Private {int sisusb; } ;


 int sisusb_setreg (int ,unsigned long,unsigned short) ;

__attribute__((used)) static void
SiS_SetRegByte(struct SiS_Private *SiS_Pr, unsigned long port,
        unsigned short data)
{
 sisusb_setreg(SiS_Pr->sisusb, port, data);
}
