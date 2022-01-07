
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscrypt_ctx {int free_list; } ;


 int ENOMEM ;
 unsigned int FS_CFLG_OWN_PAGES ;
 int GFP_NOFS ;
 scalar_t__ fscrypt_bounce_page_pool ;
 int fscrypt_ctx_cachep ;
 int fscrypt_destroy () ;
 int fscrypt_free_ctxs ;
 int fscrypt_init_mutex ;
 struct fscrypt_ctx* kmem_cache_zalloc (int ,int ) ;
 int list_add (int *,int *) ;
 scalar_t__ mempool_create_page_pool (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int num_prealloc_crypto_ctxs ;
 int num_prealloc_crypto_pages ;

int fscrypt_initialize(unsigned int cop_flags)
{
 int i, res = -ENOMEM;


 if (cop_flags & FS_CFLG_OWN_PAGES)
  return 0;

 mutex_lock(&fscrypt_init_mutex);
 if (fscrypt_bounce_page_pool)
  goto already_initialized;

 for (i = 0; i < num_prealloc_crypto_ctxs; i++) {
  struct fscrypt_ctx *ctx;

  ctx = kmem_cache_zalloc(fscrypt_ctx_cachep, GFP_NOFS);
  if (!ctx)
   goto fail;
  list_add(&ctx->free_list, &fscrypt_free_ctxs);
 }

 fscrypt_bounce_page_pool =
  mempool_create_page_pool(num_prealloc_crypto_pages, 0);
 if (!fscrypt_bounce_page_pool)
  goto fail;

already_initialized:
 mutex_unlock(&fscrypt_init_mutex);
 return 0;
fail:
 fscrypt_destroy();
 mutex_unlock(&fscrypt_init_mutex);
 return res;
}
