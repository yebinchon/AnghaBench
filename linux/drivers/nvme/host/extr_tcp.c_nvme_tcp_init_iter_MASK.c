#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bio_vec {int dummy; } ;
struct request {int rq_flags; struct bio_vec special_vec; } ;
struct TYPE_3__ {size_t iov_offset; } ;
struct nvme_tcp_request {TYPE_1__ iter; struct bio* curr_bio; } ;
struct TYPE_4__ {unsigned int bi_size; size_t bi_bvec_done; } ;
struct bio {TYPE_2__ bi_iter; int /*<<< orphan*/  bi_io_vec; } ;

/* Variables and functions */
 int RQF_SPECIAL_PAYLOAD ; 
 struct bio_vec* FUNC0 (int /*<<< orphan*/ ,TYPE_2__) ; 
 int FUNC1 (struct bio*) ; 
 struct request* FUNC2 (struct nvme_tcp_request*) ; 
 unsigned int FUNC3 (struct request*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,unsigned int,struct bio_vec*,int,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct nvme_tcp_request *req,
		unsigned int dir)
{
	struct request *rq = FUNC2(req);
	struct bio_vec *vec;
	unsigned int size;
	int nsegs;
	size_t offset;

	if (rq->rq_flags & RQF_SPECIAL_PAYLOAD) {
		vec = &rq->special_vec;
		nsegs = 1;
		size = FUNC3(rq);
		offset = 0;
	} else {
		struct bio *bio = req->curr_bio;

		vec = FUNC0(bio->bi_io_vec, bio->bi_iter);
		nsegs = FUNC1(bio);
		size = bio->bi_iter.bi_size;
		offset = bio->bi_iter.bi_bvec_done;
	}

	FUNC4(&req->iter, dir, vec, nsegs, size);
	req->iter.iov_offset = offset;
}