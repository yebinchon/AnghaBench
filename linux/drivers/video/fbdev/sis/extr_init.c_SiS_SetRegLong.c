
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int SISIOADDRESS ;


 int outl (int ,int ) ;

void
SiS_SetRegLong(SISIOADDRESS port, u32 data)
{
 outl(data, port);
}
