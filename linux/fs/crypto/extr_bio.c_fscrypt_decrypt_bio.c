
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;


 int __fscrypt_decrypt_bio (struct bio*,int) ;

void fscrypt_decrypt_bio(struct bio *bio)
{
 __fscrypt_decrypt_bio(bio, 0);
}
