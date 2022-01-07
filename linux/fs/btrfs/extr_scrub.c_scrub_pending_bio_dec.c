
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scrub_ctx {int list_wait; int bios_in_flight; } ;


 int atomic_dec (int *) ;
 int scrub_put_ctx (struct scrub_ctx*) ;
 int wake_up (int *) ;

__attribute__((used)) static void scrub_pending_bio_dec(struct scrub_ctx *sctx)
{
 atomic_dec(&sctx->bios_in_flight);
 wake_up(&sctx->list_wait);
 scrub_put_ctx(sctx);
}
