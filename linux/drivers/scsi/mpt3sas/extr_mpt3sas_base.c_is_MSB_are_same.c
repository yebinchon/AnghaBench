
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u32 ;


 scalar_t__ upper_32_bits (long) ;

__attribute__((used)) static int
is_MSB_are_same(long reply_pool_start_address, u32 pool_sz)
{
 long reply_pool_end_address;

 reply_pool_end_address = reply_pool_start_address + pool_sz;

 if (upper_32_bits(reply_pool_start_address) ==
  upper_32_bits(reply_pool_end_address))
  return 1;
 else
  return 0;
}
