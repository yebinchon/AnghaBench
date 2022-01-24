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
struct hpsa_scsi_dev_t {int /*<<< orphan*/  scsi3addr; } ;
struct ctlr_info {TYPE_1__* pdev; } ;
struct ErrorInfo {scalar_t__ CommandStatus; } ;
struct CommandList {struct ErrorInfo* err_info; struct hpsa_scsi_dev_t* device; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int IO_OK ; 
 int /*<<< orphan*/  NO_TIMEOUT ; 
 int /*<<< orphan*/  TYPE_MSG ; 
 struct CommandList* FUNC0 (struct ctlr_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct ctlr_info*,struct CommandList*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct CommandList*,int /*<<< orphan*/ ,struct ctlr_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ctlr_info*,struct CommandList*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ctlr_info*,struct CommandList*) ; 

__attribute__((used)) static int FUNC6(struct ctlr_info *h, struct hpsa_scsi_dev_t *dev,
	u8 reset_type, int reply_queue)
{
	int rc = IO_OK;
	struct CommandList *c;
	struct ErrorInfo *ei;

	c = FUNC0(h);
	c->device = dev;

	/* fill_cmd can't fail here, no data buffer to map. */
	(void) FUNC3(c, reset_type, h, NULL, 0, 0, dev->scsi3addr, TYPE_MSG);
	rc = FUNC4(h, c, reply_queue, NO_TIMEOUT);
	if (rc) {
		FUNC2(&h->pdev->dev, "Failed to send reset command\n");
		goto out;
	}
	/* no unmap needed here because no data xfer. */

	ei = c->err_info;
	if (ei->CommandStatus != 0) {
		FUNC5(h, c);
		rc = -1;
	}
out:
	FUNC1(h, c);
	return rc;
}