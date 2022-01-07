
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zd_addr_t ;
typedef int u16 ;


 int CR_START ;

__attribute__((used)) static zd_addr_t inc_addr(zd_addr_t addr)
{
 u16 a = (u16)addr;


 if ((a & 0xf000) == CR_START)
  a += 2;
 else
  a += 1;
 return (zd_addr_t)a;
}
