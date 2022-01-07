
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_aio_ctx {int refcount; int done; int aio_mutex; int list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int init_completion (int *) ;
 int kref_init (int *) ;
 struct cifs_aio_ctx* kzalloc (int,int ) ;
 int mutex_init (int *) ;

struct cifs_aio_ctx *
cifs_aio_ctx_alloc(void)
{
 struct cifs_aio_ctx *ctx;






 ctx = kzalloc(sizeof(struct cifs_aio_ctx), GFP_KERNEL);
 if (!ctx)
  return ((void*)0);

 INIT_LIST_HEAD(&ctx->list);
 mutex_init(&ctx->aio_mutex);
 init_completion(&ctx->done);
 kref_init(&ctx->refcount);
 return ctx;
}
