
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bio_vec {int dummy; } ;
struct request {int rq_flags; struct bio_vec special_vec; } ;
struct TYPE_3__ {size_t iov_offset; } ;
struct nvme_tcp_request {TYPE_1__ iter; struct bio* curr_bio; } ;
struct TYPE_4__ {unsigned int bi_size; size_t bi_bvec_done; } ;
struct bio {TYPE_2__ bi_iter; int bi_io_vec; } ;


 int RQF_SPECIAL_PAYLOAD ;
 struct bio_vec* __bvec_iter_bvec (int ,TYPE_2__) ;
 int bio_segments (struct bio*) ;
 struct request* blk_mq_rq_from_pdu (struct nvme_tcp_request*) ;
 unsigned int blk_rq_payload_bytes (struct request*) ;
 int iov_iter_bvec (TYPE_1__*,unsigned int,struct bio_vec*,int,unsigned int) ;

__attribute__((used)) static void nvme_tcp_init_iter(struct nvme_tcp_request *req,
  unsigned int dir)
{
 struct request *rq = blk_mq_rq_from_pdu(req);
 struct bio_vec *vec;
 unsigned int size;
 int nsegs;
 size_t offset;

 if (rq->rq_flags & RQF_SPECIAL_PAYLOAD) {
  vec = &rq->special_vec;
  nsegs = 1;
  size = blk_rq_payload_bytes(rq);
  offset = 0;
 } else {
  struct bio *bio = req->curr_bio;

  vec = __bvec_iter_bvec(bio->bi_io_vec, bio->bi_iter);
  nsegs = bio_segments(bio);
  size = bio->bi_iter.bi_size;
  offset = bio->bi_iter.bi_bvec_done;
 }

 iov_iter_bvec(&req->iter, dir, vec, nsegs, size);
 req->iter.iov_offset = offset;
}
