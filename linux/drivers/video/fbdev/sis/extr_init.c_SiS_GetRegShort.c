
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int SISIOADDRESS ;


 int inw (int ) ;

u16
SiS_GetRegShort(SISIOADDRESS port)
{
 return inw(port);
}
