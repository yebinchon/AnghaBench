
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int mcspi_bytes_per_word(int word_len)
{
 if (word_len <= 8)
  return 1;
 else if (word_len <= 16)
  return 2;
 else
  return 4;
}
