
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tee_context {int refcount; scalar_t__ releasing; } ;


 int kref_get (int *) ;

void teedev_ctx_get(struct tee_context *ctx)
{
 if (ctx->releasing)
  return;

 kref_get(&ctx->refcount);
}
