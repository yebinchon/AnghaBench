
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ SISIOADDRESS ;


 int inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;

u8
SiS_GetReg(SISIOADDRESS port, u8 index)
{
 outb(index, port);
 return inb(port + 1);
}
