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
struct TYPE_4__ {int mpool_alloc; scalar_t__ bvec; } ;
struct nvmet_req {scalar_t__ sg_cnt; TYPE_2__ f; TYPE_1__* ns; scalar_t__ inline_bvec; } ;
struct bio_vec {int dummy; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_3__ {scalar_t__ buffered_io; int /*<<< orphan*/  bvec_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IOCB_NOWAIT ; 
 scalar_t__ NVMET_MAX_INLINE_BIOVEC ; 
 scalar_t__ FUNC0 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nvmet_req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nvmet_req*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvmet_req*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct nvmet_req *req)
{
	ssize_t nr_bvec = req->sg_cnt;

	if (!req->sg_cnt || !nr_bvec) {
		FUNC5(req, 0);
		return;
	}

	if (nr_bvec > NVMET_MAX_INLINE_BIOVEC)
		req->f.bvec = FUNC0(nr_bvec, sizeof(struct bio_vec),
				GFP_KERNEL);
	else
		req->f.bvec = req->inline_bvec;

	if (FUNC6(!req->f.bvec)) {
		/* fallback under memory pressure */
		req->f.bvec = FUNC2(req->ns->bvec_pool, GFP_KERNEL);
		req->f.mpool_alloc = true;
	} else
		req->f.mpool_alloc = false;

	if (req->ns->buffered_io) {
		if (FUNC1(!req->f.mpool_alloc) &&
				FUNC3(req, IOCB_NOWAIT))
			return;
		FUNC4(req);
	} else
		FUNC3(req, 0);
}