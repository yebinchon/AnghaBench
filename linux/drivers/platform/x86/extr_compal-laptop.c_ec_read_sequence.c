
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int ec_read (scalar_t__,scalar_t__*) ;

__attribute__((used)) static void ec_read_sequence(u8 addr, u8 *buf, int len)
{
 int i;
 for (i = 0; i < len; i++)
  ec_read(addr + i, buf + i);
}
