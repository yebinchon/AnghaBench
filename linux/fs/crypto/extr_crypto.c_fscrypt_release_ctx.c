
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscrypt_ctx {int flags; int free_list; } ;


 int FS_CTX_REQUIRES_FREE_ENCRYPT_FL ;
 int fscrypt_ctx_cachep ;
 int fscrypt_ctx_lock ;
 int fscrypt_free_ctxs ;
 int kmem_cache_free (int ,struct fscrypt_ctx*) ;
 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void fscrypt_release_ctx(struct fscrypt_ctx *ctx)
{
 unsigned long flags;

 if (ctx->flags & FS_CTX_REQUIRES_FREE_ENCRYPT_FL) {
  kmem_cache_free(fscrypt_ctx_cachep, ctx);
 } else {
  spin_lock_irqsave(&fscrypt_ctx_lock, flags);
  list_add(&ctx->free_list, &fscrypt_free_ctxs);
  spin_unlock_irqrestore(&fscrypt_ctx_lock, flags);
 }
}
