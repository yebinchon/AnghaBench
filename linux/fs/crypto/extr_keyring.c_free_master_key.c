
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscrypt_master_key {int mk_users; int * mk_mode_keys; int mk_secret; } ;


 size_t ARRAY_SIZE (int *) ;
 int crypto_free_skcipher (int ) ;
 int key_put (int ) ;
 int kzfree (struct fscrypt_master_key*) ;
 int wipe_master_key_secret (int *) ;

__attribute__((used)) static void free_master_key(struct fscrypt_master_key *mk)
{
 size_t i;

 wipe_master_key_secret(&mk->mk_secret);

 for (i = 0; i < ARRAY_SIZE(mk->mk_mode_keys); i++)
  crypto_free_skcipher(mk->mk_mode_keys[i]);

 key_put(mk->mk_users);
 kzfree(mk);
}
