
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscrypt_direct_key {int dk_node; int dk_refcount; } ;


 int free_direct_key (struct fscrypt_direct_key*) ;
 int fscrypt_direct_keys_lock ;
 int hash_del (int *) ;
 int refcount_dec_and_lock (int *,int *) ;
 int spin_unlock (int *) ;

void fscrypt_put_direct_key(struct fscrypt_direct_key *dk)
{
 if (!refcount_dec_and_lock(&dk->dk_refcount, &fscrypt_direct_keys_lock))
  return;
 hash_del(&dk->dk_node);
 spin_unlock(&fscrypt_direct_keys_lock);

 free_direct_key(dk);
}
