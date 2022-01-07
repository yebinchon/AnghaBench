
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s16 ;


 int ec_read_u16 (int ) ;

__attribute__((used)) static s16 ec_read_s16(u8 addr)
{
 return (s16) ec_read_u16(addr);
}
