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
struct ab8500_fg {TYPE_1__* fg_psy; int /*<<< orphan*/  parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int EIO ; 
 int /*<<< orphan*/ * ab8505_fg_sysfs_psy_attrs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ab8500_fg *di)
{
	unsigned int i;

	if (FUNC4(di->parent)) {
		for (i = 0; i < FUNC0(ab8505_fg_sysfs_psy_attrs); i++)
			if (FUNC2(&di->fg_psy->dev,
					       &ab8505_fg_sysfs_psy_attrs[i]))
				goto sysfs_psy_create_attrs_failed_ab8505;
	}
	return 0;
sysfs_psy_create_attrs_failed_ab8505:
	FUNC1(&di->fg_psy->dev, "Failed creating sysfs psy attrs for ab8505.\n");
	while (i--)
		FUNC3(&di->fg_psy->dev,
				   &ab8505_fg_sysfs_psy_attrs[i]);

	return -EIO;
}