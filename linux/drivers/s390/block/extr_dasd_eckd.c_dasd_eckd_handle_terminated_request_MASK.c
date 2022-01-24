#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dasd_ccw_req {scalar_t__ retries; scalar_t__ startdev; TYPE_1__* block; int /*<<< orphan*/  lpm; int /*<<< orphan*/  status; } ;
struct TYPE_2__ {scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_CQR_FAILED ; 
 int /*<<< orphan*/  DASD_CQR_FILLED ; 
 int /*<<< orphan*/  FUNC0 (struct dasd_ccw_req*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct dasd_ccw_req *cqr)
{
	if (cqr->retries < 0) {
		cqr->status = DASD_CQR_FAILED;
		return;
	}
	cqr->status = DASD_CQR_FILLED;
	if (cqr->block && (cqr->startdev != cqr->block->base)) {
		FUNC0(cqr);
		cqr->startdev = cqr->block->base;
		cqr->lpm = FUNC1(cqr->block->base);
	}
}