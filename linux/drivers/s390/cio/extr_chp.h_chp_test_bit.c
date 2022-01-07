
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline int chp_test_bit(u8 *bitmap, int num)
{
 int byte = num >> 3;
 int mask = 128 >> (num & 7);

 return (bitmap[byte] & mask) ? 1 : 0;
}
