
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tee_context {int refcount; scalar_t__ releasing; } ;


 int kref_put (int *,int ) ;
 int teedev_ctx_release ;

void teedev_ctx_put(struct tee_context *ctx)
{
 if (ctx->releasing)
  return;

 kref_put(&ctx->refcount, teedev_ctx_release);
}
