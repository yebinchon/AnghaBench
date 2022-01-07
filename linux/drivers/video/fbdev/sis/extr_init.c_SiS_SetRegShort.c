
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int SISIOADDRESS ;


 int outw (int ,int ) ;

void
SiS_SetRegShort(SISIOADDRESS port, u16 data)
{
 outw(data, port);
}
