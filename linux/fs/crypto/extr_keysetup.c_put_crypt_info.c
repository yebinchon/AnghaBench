
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct fscrypt_master_key** data; } ;
struct key {TYPE_1__ payload; } ;
struct fscrypt_master_key {int mk_refcount; int mk_decrypted_inodes_lock; } ;
struct fscrypt_info {int ci_master_key_link; struct key* ci_master_key; int * ci_essiv_tfm; int * ci_ctfm; int ci_policy; scalar_t__ ci_direct_key; } ;


 int crypto_free_cipher (int *) ;
 int crypto_free_skcipher (int *) ;
 int fscrypt_info_cachep ;
 int fscrypt_is_direct_key_policy (int *) ;
 int fscrypt_put_direct_key (scalar_t__) ;
 int key_invalidate (struct key*) ;
 int key_put (struct key*) ;
 int kmem_cache_free (int ,struct fscrypt_info*) ;
 int list_del (int *) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void put_crypt_info(struct fscrypt_info *ci)
{
 struct key *key;

 if (!ci)
  return;

 if (ci->ci_direct_key) {
  fscrypt_put_direct_key(ci->ci_direct_key);
 } else if ((ci->ci_ctfm != ((void*)0) || ci->ci_essiv_tfm != ((void*)0)) &&
     !fscrypt_is_direct_key_policy(&ci->ci_policy)) {
  crypto_free_skcipher(ci->ci_ctfm);
  crypto_free_cipher(ci->ci_essiv_tfm);
 }

 key = ci->ci_master_key;
 if (key) {
  struct fscrypt_master_key *mk = key->payload.data[0];
  spin_lock(&mk->mk_decrypted_inodes_lock);
  list_del(&ci->ci_master_key_link);
  spin_unlock(&mk->mk_decrypted_inodes_lock);
  if (refcount_dec_and_test(&mk->mk_refcount))
   key_invalidate(key);
  key_put(key);
 }
 kmem_cache_free(fscrypt_info_cachep, ci);
}
