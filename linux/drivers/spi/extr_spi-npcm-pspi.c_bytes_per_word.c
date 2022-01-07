
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int bytes_per_word(unsigned int bits)
{
 return bits <= 8 ? 1 : 2;
}
