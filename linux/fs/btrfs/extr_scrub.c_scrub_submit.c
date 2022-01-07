
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scrub_ctx {int curr; struct scrub_bio** bios; } ;
struct scrub_bio {int bio; } ;


 int btrfsic_submit_bio (int ) ;
 int scrub_pending_bio_inc (struct scrub_ctx*) ;

__attribute__((used)) static void scrub_submit(struct scrub_ctx *sctx)
{
 struct scrub_bio *sbio;

 if (sctx->curr == -1)
  return;

 sbio = sctx->bios[sctx->curr];
 sctx->curr = -1;
 scrub_pending_bio_inc(sctx);
 btrfsic_submit_bio(sbio->bio);
}
