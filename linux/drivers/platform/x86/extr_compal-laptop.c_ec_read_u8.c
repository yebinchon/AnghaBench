
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ec_read (int ,int *) ;

__attribute__((used)) static u8 ec_read_u8(u8 addr)
{
 u8 value = 0;
 ec_read(addr, &value);
 return value;
}
