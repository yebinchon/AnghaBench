
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t loff_t ;



__attribute__((used)) static inline size_t w1_f1C_fix_count(loff_t off, size_t count, size_t size)
{
 if (off > size)
  return 0;

 if ((off + count) > size)
  return size - off;

 return count;
}
