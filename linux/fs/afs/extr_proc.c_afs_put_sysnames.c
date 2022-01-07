
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_sysnames {int nr; scalar_t__* subs; scalar_t__ blank; int usage; } ;


 scalar_t__ afs_init_sysname ;
 int kfree (scalar_t__) ;
 scalar_t__ refcount_dec_and_test (int *) ;

void afs_put_sysnames(struct afs_sysnames *sysnames)
{
 int i;

 if (sysnames && refcount_dec_and_test(&sysnames->usage)) {
  for (i = 0; i < sysnames->nr; i++)
   if (sysnames->subs[i] != afs_init_sysname &&
       sysnames->subs[i] != sysnames->blank)
    kfree(sysnames->subs[i]);
 }
}
