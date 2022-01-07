
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int erofs_bitrange(unsigned int value, unsigned int bit,
       unsigned int bits)
{

 return (value >> bit) & ((1 << bits) - 1);
}
