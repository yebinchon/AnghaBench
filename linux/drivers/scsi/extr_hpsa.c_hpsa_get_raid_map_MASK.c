#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  structure_size; } ;
struct hpsa_scsi_dev_t {TYPE_2__ raid_map; } ;
struct ctlr_info {TYPE_1__* pdev; } ;
struct ErrorInfo {scalar_t__ CommandStatus; } ;
struct CommandList {struct ErrorInfo* err_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CMD_DATA_UNDERRUN ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  HPSA_GET_RAID_MAP ; 
 int /*<<< orphan*/  NO_TIMEOUT ; 
 int /*<<< orphan*/  TYPE_CMD ; 
 struct CommandList* FUNC0 (struct ctlr_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct ctlr_info*,struct CommandList*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (struct CommandList*,int /*<<< orphan*/ ,struct ctlr_info*,TYPE_2__*,int,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ctlr_info*,int,TYPE_2__*) ; 
 int FUNC5 (struct ctlr_info*,struct CommandList*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ctlr_info*,struct CommandList*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct ctlr_info *h,
	unsigned char *scsi3addr, struct hpsa_scsi_dev_t *this_device)
{
	int rc = 0;
	struct CommandList *c;
	struct ErrorInfo *ei;

	c = FUNC0(h);

	if (FUNC3(c, HPSA_GET_RAID_MAP, h, &this_device->raid_map,
			sizeof(this_device->raid_map), 0,
			scsi3addr, TYPE_CMD)) {
		FUNC2(&h->pdev->dev, "hpsa_get_raid_map fill_cmd failed\n");
		FUNC1(h, c);
		return -1;
	}
	rc = FUNC5(h, c, DMA_FROM_DEVICE,
			NO_TIMEOUT);
	if (rc)
		goto out;
	ei = c->err_info;
	if (ei->CommandStatus != 0 && ei->CommandStatus != CMD_DATA_UNDERRUN) {
		FUNC6(h, c);
		rc = -1;
		goto out;
	}
	FUNC1(h, c);

	/* @todo in the future, dynamically allocate RAID map memory */
	if (FUNC7(this_device->raid_map.structure_size) >
				sizeof(this_device->raid_map)) {
		FUNC2(&h->pdev->dev, "RAID map size is too large!\n");
		rc = -1;
	}
	FUNC4(h, rc, &this_device->raid_map);
	return rc;
out:
	FUNC1(h, c);
	return rc;
}