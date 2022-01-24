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
typedef  scalar_t__ u16 ;
struct nvmet_req {TYPE_2__* cmd; } ;
struct nvme_dsm_range {int dummy; } ;
struct bio {int /*<<< orphan*/  bi_status; int /*<<< orphan*/  bi_end_io; struct nvmet_req* bi_private; } ;
typedef  int /*<<< orphan*/  range ;
struct TYPE_3__ {int /*<<< orphan*/  nr; } ;
struct TYPE_4__ {TYPE_1__ dsm; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct nvmet_req*,struct nvme_dsm_range*,struct bio**) ; 
 int /*<<< orphan*/  nvmet_bio_done ; 
 scalar_t__ FUNC3 (struct nvmet_req*,int,struct nvme_dsm_range*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nvmet_req*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 

__attribute__((used)) static void FUNC6(struct nvmet_req *req)
{
	struct nvme_dsm_range range;
	struct bio *bio = NULL;
	int i;
	u16 status;

	for (i = 0; i <= FUNC1(req->cmd->dsm.nr); i++) {
		status = FUNC3(req, i * sizeof(range), &range,
				sizeof(range));
		if (status)
			break;

		status = FUNC2(req, &range, &bio);
		if (status)
			break;
	}

	if (bio) {
		bio->bi_private = req;
		bio->bi_end_io = nvmet_bio_done;
		if (status) {
			bio->bi_status = BLK_STS_IOERR;
			FUNC0(bio);
		} else {
			FUNC5(bio);
		}
	} else {
		FUNC4(req, status);
	}
}