
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scrub_ctx {int bios_in_flight; int refs; } ;


 int atomic_inc (int *) ;
 int refcount_inc (int *) ;

__attribute__((used)) static void scrub_pending_bio_inc(struct scrub_ctx *sctx)
{
 refcount_inc(&sctx->refs);
 atomic_inc(&sctx->bios_in_flight);
}
