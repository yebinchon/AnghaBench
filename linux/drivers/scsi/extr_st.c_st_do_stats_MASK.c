#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct scsi_tape {TYPE_3__* stats; TYPE_2__* buffer; } ;
struct request {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_8__ {scalar_t__* cmd; scalar_t__ result; } ;
struct TYPE_7__ {int /*<<< orphan*/  in_flight; int /*<<< orphan*/  other_cnt; int /*<<< orphan*/  tot_io_time; int /*<<< orphan*/  other_time; int /*<<< orphan*/  read_byte_cnt; int /*<<< orphan*/  last_read_size; int /*<<< orphan*/  resid_cnt; int /*<<< orphan*/  read_cnt; int /*<<< orphan*/  tot_read_time; int /*<<< orphan*/  read_time; int /*<<< orphan*/  write_byte_cnt; int /*<<< orphan*/  last_write_size; int /*<<< orphan*/  write_cnt; int /*<<< orphan*/  tot_write_time; int /*<<< orphan*/  write_time; } ;
struct TYPE_5__ {scalar_t__ residual; } ;
struct TYPE_6__ {TYPE_1__ cmdstat; } ;

/* Variables and functions */
 scalar_t__ READ_6 ; 
 scalar_t__ WRITE_6 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC7 (struct request*) ; 

__attribute__((used)) static void FUNC8(struct scsi_tape *STp, struct request *req)
{
	ktime_t now;

	now = FUNC4();
	if (FUNC7(req)->cmd[0] == WRITE_6) {
		now = FUNC5(now, STp->stats->write_time);
		FUNC0(FUNC6(now), &STp->stats->tot_write_time);
		FUNC0(FUNC6(now), &STp->stats->tot_io_time);
		FUNC2(&STp->stats->write_cnt);
		if (FUNC7(req)->result) {
			FUNC0(FUNC3(&STp->stats->last_write_size)
				- STp->buffer->cmdstat.residual,
				&STp->stats->write_byte_cnt);
			if (STp->buffer->cmdstat.residual > 0)
				FUNC2(&STp->stats->resid_cnt);
		} else
			FUNC0(FUNC3(&STp->stats->last_write_size),
				&STp->stats->write_byte_cnt);
	} else if (FUNC7(req)->cmd[0] == READ_6) {
		now = FUNC5(now, STp->stats->read_time);
		FUNC0(FUNC6(now), &STp->stats->tot_read_time);
		FUNC0(FUNC6(now), &STp->stats->tot_io_time);
		FUNC2(&STp->stats->read_cnt);
		if (FUNC7(req)->result) {
			FUNC0(FUNC3(&STp->stats->last_read_size)
				- STp->buffer->cmdstat.residual,
				&STp->stats->read_byte_cnt);
			if (STp->buffer->cmdstat.residual > 0)
				FUNC2(&STp->stats->resid_cnt);
		} else
			FUNC0(FUNC3(&STp->stats->last_read_size),
				&STp->stats->read_byte_cnt);
	} else {
		now = FUNC5(now, STp->stats->other_time);
		FUNC0(FUNC6(now), &STp->stats->tot_io_time);
		FUNC2(&STp->stats->other_cnt);
	}
	FUNC1(&STp->stats->in_flight);
}