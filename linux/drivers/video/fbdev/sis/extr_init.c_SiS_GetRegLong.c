
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int SISIOADDRESS ;


 int inl (int ) ;

u32
SiS_GetRegLong(SISIOADDRESS port)
{
 return inl(port);
}
