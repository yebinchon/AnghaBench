
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscrypt_direct_key {int dk_ctfm; } ;


 int crypto_free_skcipher (int ) ;
 int kzfree (struct fscrypt_direct_key*) ;

__attribute__((used)) static void free_direct_key(struct fscrypt_direct_key *dk)
{
 if (dk) {
  crypto_free_skcipher(dk->dk_ctfm);
  kzfree(dk);
 }
}
