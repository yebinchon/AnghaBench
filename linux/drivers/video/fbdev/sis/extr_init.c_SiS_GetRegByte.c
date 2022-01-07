
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int SISIOADDRESS ;


 int inb (int ) ;

u8
SiS_GetRegByte(SISIOADDRESS port)
{
 return inb(port);
}
