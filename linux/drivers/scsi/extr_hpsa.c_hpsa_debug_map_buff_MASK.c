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
typedef  int u16 ;
struct raid_map_disk_data {int /*<<< orphan*/ * xor_mult; int /*<<< orphan*/  ioaccel_handle; } ;
struct raid_map_data {int /*<<< orphan*/  metadata_disks_per_row; int /*<<< orphan*/  data_disks_per_row; int /*<<< orphan*/  row_cnt; int /*<<< orphan*/  layout_map_count; int /*<<< orphan*/  dekindex; int /*<<< orphan*/  flags; int /*<<< orphan*/  disk_blk_cnt; int /*<<< orphan*/  disk_starting_blk; int /*<<< orphan*/  strip_size; int /*<<< orphan*/  parity_rotation_shift; int /*<<< orphan*/  phys_blk_shift; int /*<<< orphan*/  volume_blk_cnt; int /*<<< orphan*/  volume_blk_size; int /*<<< orphan*/  structure_size; struct raid_map_disk_data* data; } ;
struct ctlr_info {int raid_offload_debug; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int RAID_MAP_FLAG_ENCRYPT_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ctlr_info *h, int rc,
				struct raid_map_data *map_buff)
{
	struct raid_map_disk_data *dd = &map_buff->data[0];
	int map, row, col;
	u16 map_cnt, row_cnt, disks_per_row;

	if (rc != 0)
		return;

	/* Show details only if debugging has been activated. */
	if (h->raid_offload_debug < 2)
		return;

	FUNC0(&h->pdev->dev, "structure_size = %u\n",
				FUNC2(map_buff->structure_size));
	FUNC0(&h->pdev->dev, "volume_blk_size = %u\n",
			FUNC2(map_buff->volume_blk_size));
	FUNC0(&h->pdev->dev, "volume_blk_cnt = 0x%llx\n",
			FUNC3(map_buff->volume_blk_cnt));
	FUNC0(&h->pdev->dev, "physicalBlockShift = %u\n",
			map_buff->phys_blk_shift);
	FUNC0(&h->pdev->dev, "parity_rotation_shift = %u\n",
			map_buff->parity_rotation_shift);
	FUNC0(&h->pdev->dev, "strip_size = %u\n",
			FUNC1(map_buff->strip_size));
	FUNC0(&h->pdev->dev, "disk_starting_blk = 0x%llx\n",
			FUNC3(map_buff->disk_starting_blk));
	FUNC0(&h->pdev->dev, "disk_blk_cnt = 0x%llx\n",
			FUNC3(map_buff->disk_blk_cnt));
	FUNC0(&h->pdev->dev, "data_disks_per_row = %u\n",
			FUNC1(map_buff->data_disks_per_row));
	FUNC0(&h->pdev->dev, "metadata_disks_per_row = %u\n",
			FUNC1(map_buff->metadata_disks_per_row));
	FUNC0(&h->pdev->dev, "row_cnt = %u\n",
			FUNC1(map_buff->row_cnt));
	FUNC0(&h->pdev->dev, "layout_map_count = %u\n",
			FUNC1(map_buff->layout_map_count));
	FUNC0(&h->pdev->dev, "flags = 0x%x\n",
			FUNC1(map_buff->flags));
	FUNC0(&h->pdev->dev, "encryption = %s\n",
			FUNC1(map_buff->flags) &
			RAID_MAP_FLAG_ENCRYPT_ON ?  "ON" : "OFF");
	FUNC0(&h->pdev->dev, "dekindex = %u\n",
			FUNC1(map_buff->dekindex));
	map_cnt = FUNC1(map_buff->layout_map_count);
	for (map = 0; map < map_cnt; map++) {
		FUNC0(&h->pdev->dev, "Map%u:\n", map);
		row_cnt = FUNC1(map_buff->row_cnt);
		for (row = 0; row < row_cnt; row++) {
			FUNC0(&h->pdev->dev, "  Row%u:\n", row);
			disks_per_row =
				FUNC1(map_buff->data_disks_per_row);
			for (col = 0; col < disks_per_row; col++, dd++)
				FUNC0(&h->pdev->dev,
					"    D%02u: h=0x%04x xor=%u,%u\n",
					col, dd->ioaccel_handle,
					dd->xor_mult[0], dd->xor_mult[1]);
			disks_per_row =
				FUNC1(map_buff->metadata_disks_per_row);
			for (col = 0; col < disks_per_row; col++, dd++)
				FUNC0(&h->pdev->dev,
					"    M%02u: h=0x%04x xor=%u,%u\n",
					col, dd->ioaccel_handle,
					dd->xor_mult[0], dd->xor_mult[1]);
		}
	}
}