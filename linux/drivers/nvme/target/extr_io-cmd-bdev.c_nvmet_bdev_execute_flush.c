
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bio {int bi_opf; int bi_end_io; struct nvmet_req* bi_private; } ;
struct TYPE_3__ {struct bio inline_bio; } ;
struct nvmet_req {TYPE_2__* ns; int inline_bvec; TYPE_1__ b; } ;
struct TYPE_4__ {int bdev; } ;


 int ARRAY_SIZE (int ) ;
 int REQ_OP_WRITE ;
 int REQ_PREFLUSH ;
 int bio_init (struct bio*,int ,int ) ;
 int bio_set_dev (struct bio*,int ) ;
 int nvmet_bio_done ;
 int submit_bio (struct bio*) ;

__attribute__((used)) static void nvmet_bdev_execute_flush(struct nvmet_req *req)
{
 struct bio *bio = &req->b.inline_bio;

 bio_init(bio, req->inline_bvec, ARRAY_SIZE(req->inline_bvec));
 bio_set_dev(bio, req->ns->bdev);
 bio->bi_private = req;
 bio->bi_end_io = nvmet_bio_done;
 bio->bi_opf = REQ_OP_WRITE | REQ_PREFLUSH;

 submit_bio(bio);
}
