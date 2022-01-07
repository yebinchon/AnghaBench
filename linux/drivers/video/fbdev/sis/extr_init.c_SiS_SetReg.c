
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ SISIOADDRESS ;


 int outb (int ,scalar_t__) ;

void
SiS_SetReg(SISIOADDRESS port, u8 index, u8 data)
{
 outb(index, port);
 outb(data, port + 1);
}
