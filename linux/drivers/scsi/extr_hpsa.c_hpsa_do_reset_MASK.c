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
typedef  int /*<<< orphan*/  u8 ;
struct hpsa_scsi_dev_t {int /*<<< orphan*/  scsi3addr; int /*<<< orphan*/  commands_outstanding; } ;
struct ctlr_info {int /*<<< orphan*/  reset_mutex; TYPE_1__* pdev; int /*<<< orphan*/  event_sync_wait_queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINTR ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (struct ctlr_info*,struct hpsa_scsi_dev_t*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct ctlr_info*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct ctlr_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct ctlr_info *h, struct hpsa_scsi_dev_t *dev,
	u8 reset_type, int reply_queue)
{
	int rc = 0;

	/* We can really only handle one reset at a time */
	if (FUNC5(&h->reset_mutex) == -EINTR) {
		FUNC2(&h->pdev->dev, "concurrent reset wait interrupted.\n");
		return -EINTR;
	}

	rc = FUNC3(h, dev, reset_type, reply_queue);
	if (!rc) {
		/* incremented by sending the reset request */
		FUNC0(&dev->commands_outstanding);
		FUNC8(h->event_sync_wait_queue,
			FUNC1(&dev->commands_outstanding) <= 0 ||
			FUNC4(h));
	}

	if (FUNC7(FUNC4(h))) {
		FUNC2(&h->pdev->dev,
			 "Controller lockup detected during reset wait\n");
		rc = -ENODEV;
	}

	if (!rc)
		rc = FUNC9(h, dev->scsi3addr, 0);

	FUNC6(&h->reset_mutex);
	return rc;
}