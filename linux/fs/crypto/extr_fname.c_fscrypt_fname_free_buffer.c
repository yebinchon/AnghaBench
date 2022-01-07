
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscrypt_str {int * name; } ;


 int kfree (int *) ;

void fscrypt_fname_free_buffer(struct fscrypt_str *crypto_str)
{
 if (!crypto_str)
  return;
 kfree(crypto_str->name);
 crypto_str->name = ((void*)0);
}
