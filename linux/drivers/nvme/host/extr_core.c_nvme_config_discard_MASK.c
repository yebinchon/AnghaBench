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
typedef  int u32 ;
struct TYPE_2__ {int discard_granularity; scalar_t__ discard_alignment; } ;
struct request_queue {TYPE_1__ limits; } ;
struct nvme_ns {int sws; int sgs; struct nvme_ctrl* ctrl; } ;
struct nvme_dsm_range {int dummy; } ;
struct nvme_ctrl {int oncs; int quirks; scalar_t__ nr_streams; } ;
struct gendisk {struct request_queue* queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NVME_CTRL_ONCS_DSM ; 
 int NVME_DSM_MAX_RANGES ; 
 int NVME_QUIRK_DEALLOCATE_ZEROES ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  QUEUE_FLAG_DISCARD ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct request_queue*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct request_queue*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct request_queue*) ; 

__attribute__((used)) static void FUNC7(struct gendisk *disk, struct nvme_ns *ns)
{
	struct nvme_ctrl *ctrl = ns->ctrl;
	struct request_queue *queue = disk->queue;
	u32 size = FUNC6(queue);

	if (!(ctrl->oncs & NVME_CTRL_ONCS_DSM)) {
		FUNC1(QUEUE_FLAG_DISCARD, queue);
		return;
	}

	if (ctrl->nr_streams && ns->sws && ns->sgs)
		size *= ns->sws * ns->sgs;

	FUNC0(PAGE_SIZE / sizeof(struct nvme_dsm_range) <
			NVME_DSM_MAX_RANGES);

	queue->limits.discard_alignment = 0;
	queue->limits.discard_granularity = size;

	/* If discard is already enabled, don't reset queue limits */
	if (FUNC2(QUEUE_FLAG_DISCARD, queue))
		return;

	FUNC3(queue, UINT_MAX);
	FUNC4(queue, NVME_DSM_MAX_RANGES);

	if (ctrl->quirks & NVME_QUIRK_DEALLOCATE_ZEROES)
		FUNC5(queue, UINT_MAX);
}