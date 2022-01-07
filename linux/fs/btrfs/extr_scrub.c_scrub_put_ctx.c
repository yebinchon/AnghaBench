
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scrub_ctx {int refs; } ;


 scalar_t__ refcount_dec_and_test (int *) ;
 int scrub_free_ctx (struct scrub_ctx*) ;

__attribute__((used)) static void scrub_put_ctx(struct scrub_ctx *sctx)
{
 if (refcount_dec_and_test(&sctx->refs))
  scrub_free_ctx(sctx);
}
