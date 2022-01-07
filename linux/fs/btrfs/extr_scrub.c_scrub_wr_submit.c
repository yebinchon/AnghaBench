
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scrub_ctx {struct scrub_bio* wr_curr_bio; } ;
struct scrub_bio {TYPE_1__* bio; } ;
struct TYPE_2__ {int bi_disk; } ;


 int WARN_ON (int) ;
 int btrfsic_submit_bio (TYPE_1__*) ;
 int scrub_pending_bio_inc (struct scrub_ctx*) ;

__attribute__((used)) static void scrub_wr_submit(struct scrub_ctx *sctx)
{
 struct scrub_bio *sbio;

 if (!sctx->wr_curr_bio)
  return;

 sbio = sctx->wr_curr_bio;
 sctx->wr_curr_bio = ((void*)0);
 WARN_ON(!sbio->bio->bi_disk);
 scrub_pending_bio_inc(sctx);




 btrfsic_submit_bio(sbio->bio);
}
