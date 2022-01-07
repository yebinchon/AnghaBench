
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscrypt_master_key_secret {int hkdf; } ;


 int fscrypt_destroy_hkdf (int *) ;
 int memzero_explicit (struct fscrypt_master_key_secret*,int) ;

__attribute__((used)) static void wipe_master_key_secret(struct fscrypt_master_key_secret *secret)
{
 fscrypt_destroy_hkdf(&secret->hkdf);
 memzero_explicit(secret, sizeof(*secret));
}
