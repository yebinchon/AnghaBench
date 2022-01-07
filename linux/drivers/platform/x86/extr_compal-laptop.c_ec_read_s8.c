
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s8 ;


 int ec_read_u8 (int ) ;

__attribute__((used)) static s8 ec_read_s8(u8 addr)
{
 return (s8)ec_read_u8(addr);
}
