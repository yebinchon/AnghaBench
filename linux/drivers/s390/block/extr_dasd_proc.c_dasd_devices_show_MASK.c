#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int dummy; } ;
struct dasd_device {int features; int state; TYPE_2__* discipline; TYPE_1__* cdev; struct dasd_block* block; } ;
struct dasd_block {int bp_block; int blocks; TYPE_3__* gdp; } ;
struct TYPE_6__ {int /*<<< orphan*/  disk_name; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DASD_FEATURE_READONLY ; 
#define  DASD_STATE_BASIC 133 
#define  DASD_STATE_KNOWN 132 
#define  DASD_STATE_NEW 131 
#define  DASD_STATE_ONLINE 130 
#define  DASD_STATE_READY 129 
#define  DASD_STATE_UNFMT 128 
 scalar_t__ FUNC0 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct dasd_device* FUNC4 (unsigned long) ; 
 scalar_t__ dasd_probeonly ; 
 int /*<<< orphan*/  FUNC5 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (struct seq_file*,char*,...) ; 

__attribute__((used)) static int
FUNC9(struct seq_file *m, void *v)
{
	struct dasd_device *device;
	struct dasd_block *block;
	char *substr;

	device = FUNC4((unsigned long) v - 1);
	if (FUNC0(device))
		return 0;
	if (device->block)
		block = device->block;
	else {
		FUNC5(device);
		return 0;
	}
	/* Print device number. */
	FUNC8(m, "%s", FUNC6(&device->cdev->dev));
	/* Print discipline string. */
	if (device->discipline != NULL)
		FUNC8(m, "(%s)", device->discipline->name);
	else
		FUNC8(m, "(none)");
	/* Print kdev. */
	if (block->gdp)
		FUNC8(m, " at (%3d:%6d)",
			   FUNC1(FUNC7(block->gdp)),
			   FUNC2(FUNC7(block->gdp)));
	else
		FUNC8(m, "  at (???:??????)");
	/* Print device name. */
	if (block->gdp)
		FUNC8(m, " is %-8s", block->gdp->disk_name);
	else
		FUNC8(m, " is ????????");
	/* Print devices features. */
	substr = (device->features & DASD_FEATURE_READONLY) ? "(ro)" : " ";
	FUNC8(m, "%4s: ", substr);
	/* Print device status information. */
	switch (device->state) {
	case DASD_STATE_NEW:
		FUNC8(m, "new");
		break;
	case DASD_STATE_KNOWN:
		FUNC8(m, "detected");
		break;
	case DASD_STATE_BASIC:
		FUNC8(m, "basic");
		break;
	case DASD_STATE_UNFMT:
		FUNC8(m, "unformatted");
		break;
	case DASD_STATE_READY:
	case DASD_STATE_ONLINE:
		FUNC8(m, "active ");
		if (FUNC3(block->bp_block))
			FUNC8(m, "n/f	 ");
		else
			FUNC8(m,
				   "at blocksize: %u, %lu blocks, %lu MB",
				   block->bp_block, block->blocks,
				   ((block->bp_block >> 9) *
				    block->blocks) >> 11);
		break;
	default:
		FUNC8(m, "no stat");
		break;
	}
	FUNC5(device);
	if (dasd_probeonly)
		FUNC8(m, "(probeonly)");
	FUNC8(m, "\n");
	return 0;
}