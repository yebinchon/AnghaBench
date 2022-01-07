
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bio {int bi_status; struct nvmet_req* bi_private; } ;
struct TYPE_2__ {struct bio inline_bio; } ;
struct nvmet_req {TYPE_1__ b; } ;


 int bio_put (struct bio*) ;
 int blk_to_nvme_status (struct nvmet_req*,int ) ;
 int nvmet_req_complete (struct nvmet_req*,int ) ;

__attribute__((used)) static void nvmet_bio_done(struct bio *bio)
{
 struct nvmet_req *req = bio->bi_private;

 nvmet_req_complete(req, blk_to_nvme_status(req, bio->bi_status));
 if (bio != &req->b.inline_bio)
  bio_put(bio);
}
