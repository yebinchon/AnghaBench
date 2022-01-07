
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_mc_hash {int high; scalar_t__ low; } ;



__attribute__((used)) static inline void zd_mc_clear(struct zd_mc_hash *hash)
{
 hash->low = 0;



 hash->high = 0x80000000;
}
