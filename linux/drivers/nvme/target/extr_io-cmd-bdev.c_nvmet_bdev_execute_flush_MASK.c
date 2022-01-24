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
struct bio {int bi_opf; int /*<<< orphan*/  bi_end_io; struct nvmet_req* bi_private; } ;
struct TYPE_3__ {struct bio inline_bio; } ;
struct nvmet_req {TYPE_2__* ns; int /*<<< orphan*/  inline_bvec; TYPE_1__ b; } ;
struct TYPE_4__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int REQ_OP_WRITE ; 
 int REQ_PREFLUSH ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvmet_bio_done ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 

__attribute__((used)) static void FUNC4(struct nvmet_req *req)
{
	struct bio *bio = &req->b.inline_bio;

	FUNC1(bio, req->inline_bvec, FUNC0(req->inline_bvec));
	FUNC2(bio, req->ns->bdev);
	bio->bi_private = req;
	bio->bi_end_io = nvmet_bio_done;
	bio->bi_opf = REQ_OP_WRITE | REQ_PREFLUSH;

	FUNC3(bio);
}