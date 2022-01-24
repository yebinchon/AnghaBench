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
struct request {int cmd_flags; int /*<<< orphan*/  q; } ;
typedef  scalar_t__ blk_status_t ;
struct TYPE_4__ {TYPE_1__* ctrl; int /*<<< orphan*/  status; } ;
struct TYPE_3__ {int comp_seen; scalar_t__ kas; } ;

/* Variables and functions */
 scalar_t__ BLK_STS_OK ; 
 int REQ_NVME_MPATH ; 
 int /*<<< orphan*/  FUNC0 (struct request*,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 TYPE_2__* FUNC5 (struct request*) ; 
 scalar_t__ FUNC6 (struct request*) ; 
 int /*<<< orphan*/  FUNC7 (struct request*) ; 
 int /*<<< orphan*/  FUNC8 (struct request*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct request*) ; 
 scalar_t__ FUNC10 (int) ; 

void FUNC11(struct request *req)
{
	blk_status_t status = FUNC3(FUNC5(req)->status);

	FUNC9(req);

	if (FUNC5(req)->ctrl->kas)
		FUNC5(req)->ctrl->comp_seen = true;

	if (FUNC10(status != BLK_STS_OK && FUNC6(req))) {
		if ((req->cmd_flags & REQ_NVME_MPATH) &&
		    FUNC1(status)) {
			FUNC4(req);
			return;
		}

		if (!FUNC2(req->q)) {
			FUNC7(req);
			return;
		}
	}

	FUNC8(req, status);
	FUNC0(req, status);
}