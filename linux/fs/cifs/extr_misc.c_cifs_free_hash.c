
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdesc {int dummy; } ;
struct crypto_shash {int dummy; } ;


 int crypto_free_shash (struct crypto_shash*) ;
 int kfree (struct sdesc*) ;

void
cifs_free_hash(struct crypto_shash **shash, struct sdesc **sdesc)
{
 kfree(*sdesc);
 *sdesc = ((void*)0);
 if (*shash)
  crypto_free_shash(*shash);
 *shash = ((void*)0);
}
