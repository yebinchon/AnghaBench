
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {struct crypto_shash* tfm; } ;
struct crypto_shash {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct crypto_shash*) ;
 int MICHAEL_MIC_KEY_LEN ;
 int PTR_ERR (struct crypto_shash*) ;
 struct crypto_shash* crypto_alloc_shash (char*,int ,int ) ;
 int crypto_free_shash (struct crypto_shash*) ;
 scalar_t__ crypto_shash_descsize (struct crypto_shash*) ;
 int crypto_shash_finup (struct shash_desc*,int *,unsigned int,int *) ;
 int crypto_shash_init (struct shash_desc*) ;
 int crypto_shash_setkey (struct crypto_shash*,int *,int ) ;
 int crypto_shash_update (struct shash_desc*,int *,int) ;
 struct shash_desc* kmalloc (scalar_t__,int ) ;
 int kzfree (struct shash_desc*) ;

__attribute__((used)) static int
michael_mic(u8 *key, u8 *data, unsigned int len, u8 priority, u8 *result)
{
 u8 pad_data[4] = { priority, 0, 0, 0 };
 struct crypto_shash *tfm = ((void*)0);
 struct shash_desc *desc = ((void*)0);
 int ret;

 tfm = crypto_alloc_shash("michael_mic", 0, 0);
 if (IS_ERR(tfm)) {
  ret = PTR_ERR(tfm);
  goto err;
 }

 ret = crypto_shash_setkey(tfm, key, MICHAEL_MIC_KEY_LEN);
 if (ret < 0)
  goto err_free_tfm;

 desc = kmalloc(sizeof(*desc) + crypto_shash_descsize(tfm), GFP_KERNEL);
 if (!desc) {
  ret = -ENOMEM;
  goto err_free_tfm;
 }

 desc->tfm = tfm;

 ret = crypto_shash_init(desc);
 if (ret < 0)
  goto err_free_desc;
 ret = crypto_shash_update(desc, data, 12);
 if (ret < 0)
  goto err_free_desc;

 ret = crypto_shash_update(desc, pad_data, 4);
 if (ret < 0)
  goto err_free_desc;

 ret = crypto_shash_finup(desc, data + 12, len - 12, result);

err_free_desc:
 kzfree(desc);

err_free_tfm:
 crypto_free_shash(tfm);

err:
 return ret;
}
