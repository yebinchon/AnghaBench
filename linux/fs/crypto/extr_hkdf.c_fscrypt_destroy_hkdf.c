
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscrypt_hkdf {int hmac_tfm; } ;


 int crypto_free_shash (int ) ;

void fscrypt_destroy_hkdf(struct fscrypt_hkdf *hkdf)
{
 crypto_free_shash(hkdf->hmac_tfm);
}
