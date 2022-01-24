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
struct raid_map {int /*<<< orphan*/  structure_size; } ;
struct pqi_scsi_dev {struct raid_map* raid_map; int /*<<< orphan*/  scsi3addr; } ;
struct pqi_ctrl_info {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CISS_GET_RAID_MAP ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NO_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct raid_map*) ; 
 struct raid_map* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pqi_ctrl_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct raid_map*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct pqi_ctrl_info*,struct pqi_scsi_dev*,struct raid_map*) ; 

__attribute__((used)) static int FUNC6(struct pqi_ctrl_info *ctrl_info,
	struct pqi_scsi_dev *device)
{
	int rc;
	u32 raid_map_size;
	struct raid_map *raid_map;

	raid_map = FUNC3(sizeof(*raid_map), GFP_KERNEL);
	if (!raid_map)
		return -ENOMEM;

	rc = FUNC4(ctrl_info, CISS_GET_RAID_MAP,
		device->scsi3addr, raid_map, sizeof(*raid_map),
		0, NULL, NO_TIMEOUT);

	if (rc)
		goto error;

	raid_map_size = FUNC1(&raid_map->structure_size);

	if (raid_map_size > sizeof(*raid_map)) {

		FUNC2(raid_map);

		raid_map = FUNC3(raid_map_size, GFP_KERNEL);
		if (!raid_map)
			return -ENOMEM;

		rc = FUNC4(ctrl_info, CISS_GET_RAID_MAP,
			device->scsi3addr, raid_map, raid_map_size,
			0, NULL, NO_TIMEOUT);
		if (rc)
			goto error;

		if (FUNC1(&raid_map->structure_size)
			!= raid_map_size) {
			FUNC0(&ctrl_info->pci_dev->dev,
				"Requested %d bytes, received %d bytes",
				raid_map_size,
				FUNC1(&raid_map->structure_size));
			goto error;
		}
	}

	rc = FUNC5(ctrl_info, device, raid_map);
	if (rc)
		goto error;

	device->raid_map = raid_map;

	return 0;

error:
	FUNC2(raid_map);

	return rc;
}