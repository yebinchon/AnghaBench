
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_wb_key {int key; int usage; } ;


 int key_put (int ) ;
 int kfree (struct afs_wb_key*) ;
 scalar_t__ refcount_dec_and_test (int *) ;

void afs_put_wb_key(struct afs_wb_key *wbk)
{
 if (refcount_dec_and_test(&wbk->usage)) {
  key_put(wbk->key);
  kfree(wbk);
 }
}
