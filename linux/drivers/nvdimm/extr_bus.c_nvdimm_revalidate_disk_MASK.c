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
struct nd_region {int ro; int /*<<< orphan*/  dev; } ;
struct gendisk {int /*<<< orphan*/  disk_name; } ;
struct device {int /*<<< orphan*/  parent; } ;
struct TYPE_2__ {struct device* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (struct gendisk*) ; 
 int FUNC3 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC4 (struct gendisk*,int) ; 
 struct nd_region* FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct gendisk *disk)
{
	struct device *dev = FUNC2(disk)->parent;
	struct nd_region *nd_region = FUNC5(dev->parent);
	int disk_ro = FUNC3(disk);

	/*
	 * Upgrade to read-only if the region is read-only preserve as
	 * read-only if the disk is already read-only.
	 */
	if (disk_ro || nd_region->ro == disk_ro)
		return 0;

	FUNC0(dev, "%s read-only, marking %s read-only\n",
			FUNC1(&nd_region->dev), disk->disk_name);
	FUNC4(disk, 1);

	return 0;

}