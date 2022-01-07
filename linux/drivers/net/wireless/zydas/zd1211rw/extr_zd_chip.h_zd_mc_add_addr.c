
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zd_mc_hash {int low; int high; } ;



__attribute__((used)) static inline void zd_mc_add_addr(struct zd_mc_hash *hash, u8 *addr)
{
 unsigned int i = addr[5] >> 2;
 if (i < 32) {
  hash->low |= 1 << i;
 } else {
  hash->high |= 1 << (i-32);
 }
}
