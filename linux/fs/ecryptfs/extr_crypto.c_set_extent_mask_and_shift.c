
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecryptfs_crypt_stat {int extent_mask; int extent_size; scalar_t__ extent_shift; } ;



__attribute__((used)) static void set_extent_mask_and_shift(struct ecryptfs_crypt_stat *crypt_stat)
{
 int extent_size_tmp;

 crypt_stat->extent_mask = 0xFFFFFFFF;
 crypt_stat->extent_shift = 0;
 if (crypt_stat->extent_size == 0)
  return;
 extent_size_tmp = crypt_stat->extent_size;
 while ((extent_size_tmp & 0x01) == 0) {
  extent_size_tmp >>= 1;
  crypt_stat->extent_mask <<= 1;
  crypt_stat->extent_shift++;
 }
}
