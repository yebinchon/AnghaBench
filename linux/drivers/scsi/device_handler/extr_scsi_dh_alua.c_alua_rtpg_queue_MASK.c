#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct scsi_device {int dummy; } ;
struct alua_queue_data {int /*<<< orphan*/  entry; } ;
struct alua_port_group {int flags; int /*<<< orphan*/  kref; int /*<<< orphan*/  rtpg_work; int /*<<< orphan*/  lock; struct scsi_device* rtpg_sdev; scalar_t__ interval; int /*<<< orphan*/  rtpg_list; } ;

/* Variables and functions */
 int ALUA_PG_RUNNING ; 
 int ALUA_PG_RUN_RTPG ; 
 int ALUA_PG_RUN_STPG ; 
 int /*<<< orphan*/  ALUA_RTPG_DELAY_MSECS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  kaluad_wq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  release_port_group ; 
 scalar_t__ FUNC6 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC10(struct alua_port_group *pg,
			    struct scsi_device *sdev,
			    struct alua_queue_data *qdata, bool force)
{
	int start_queue = 0;
	unsigned long flags;
	if (FUNC0(!pg) || FUNC6(sdev))
		return false;

	FUNC8(&pg->lock, flags);
	if (qdata) {
		FUNC3(&qdata->entry, &pg->rtpg_list);
		pg->flags |= ALUA_PG_RUN_STPG;
		force = true;
	}
	if (pg->rtpg_sdev == NULL) {
		pg->interval = 0;
		pg->flags |= ALUA_PG_RUN_RTPG;
		FUNC1(&pg->kref);
		pg->rtpg_sdev = sdev;
		start_queue = 1;
	} else if (!(pg->flags & ALUA_PG_RUN_RTPG) && force) {
		pg->flags |= ALUA_PG_RUN_RTPG;
		/* Do not queue if the worker is already running */
		if (!(pg->flags & ALUA_PG_RUNNING)) {
			FUNC1(&pg->kref);
			start_queue = 1;
		}
	}

	FUNC9(&pg->lock, flags);

	if (start_queue) {
		if (FUNC5(kaluad_wq, &pg->rtpg_work,
				FUNC4(ALUA_RTPG_DELAY_MSECS)))
			sdev = NULL;
		else
			FUNC2(&pg->kref, release_port_group);
	}
	if (sdev)
		FUNC7(sdev);

	return true;
}