
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;


 int ec_read_u8 (scalar_t__) ;

__attribute__((used)) static u16 ec_read_u16(u8 addr)
{
 int hi, lo;
 lo = ec_read_u8(addr);
 hi = ec_read_u8(addr + 1);
 return (hi << 8) + lo;
}
