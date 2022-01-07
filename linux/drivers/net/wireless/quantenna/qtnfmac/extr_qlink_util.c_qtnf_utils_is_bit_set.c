
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;


 unsigned int BITS_PER_BYTE ;

bool qtnf_utils_is_bit_set(const u8 *arr, unsigned int bit,
      unsigned int arr_max_len)
{
 unsigned int idx = bit / BITS_PER_BYTE;
 u8 mask = 1 << (bit - (idx * BITS_PER_BYTE));

 if (idx >= arr_max_len)
  return 0;

 return arr[idx] & mask;
}
