
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct crypto_shash {int dummy; } ;
struct TYPE_7__ {struct crypto_shash* tfm; } ;


 int SHASH_DESC_ON_STACK (TYPE_1__*,struct crypto_shash*) ;
 int crypto_shash_final (TYPE_1__*,int *) ;
 int crypto_shash_init (TYPE_1__*) ;
 scalar_t__ crypto_shash_setkey (struct crypto_shash*,int *,int) ;
 int crypto_shash_update (TYPE_1__*,int *,size_t) ;
 TYPE_1__* desc ;
 int shash_desc_zero (TYPE_1__*) ;

__attribute__((used)) static int michael_mic(struct crypto_shash *tfm_michael, u8 *key, u8 *hdr,
         u8 *data, size_t data_len, u8 *mic)
{
 SHASH_DESC_ON_STACK(desc, tfm_michael);
 int err;

 desc->tfm = tfm_michael;

 if (crypto_shash_setkey(tfm_michael, key, 8))
  return -1;

 err = crypto_shash_init(desc);
 if (err)
  goto out;
 err = crypto_shash_update(desc, hdr, 16);
 if (err)
  goto out;
 err = crypto_shash_update(desc, data, data_len);
 if (err)
  goto out;
 err = crypto_shash_final(desc, mic);

out:
 shash_desc_zero(desc);
 return err;
}
