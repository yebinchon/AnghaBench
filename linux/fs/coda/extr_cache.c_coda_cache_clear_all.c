
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int atomic_inc (int *) ;
 int permission_epoch ;

void coda_cache_clear_all(struct super_block *sb)
{
 atomic_inc(&permission_epoch);
}
