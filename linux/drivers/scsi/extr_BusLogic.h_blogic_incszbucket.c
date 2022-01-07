
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void blogic_incszbucket(unsigned int *cmdsz_buckets,
     unsigned int amount)
{
 int index = 0;
 if (amount < 8 * 1024) {
  if (amount < 2 * 1024)
   index = (amount < 1 * 1024 ? 0 : 1);
  else
   index = (amount < 4 * 1024 ? 2 : 3);
 } else if (amount < 128 * 1024) {
  if (amount < 32 * 1024)
   index = (amount < 16 * 1024 ? 4 : 5);
  else
   index = (amount < 64 * 1024 ? 6 : 7);
 } else
  index = (amount < 256 * 1024 ? 8 : 9);
 cmdsz_buckets[index]++;
}
