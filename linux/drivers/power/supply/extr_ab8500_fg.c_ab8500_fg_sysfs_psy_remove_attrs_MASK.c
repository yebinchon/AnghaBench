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
 int /*<<< orphan*/ * ab8505_fg_sysfs_psy_attrs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ab8500_fg *di)
{
	unsigned int i;

	if (FUNC2(di->parent)) {
		for (i = 0; i < FUNC0(ab8505_fg_sysfs_psy_attrs); i++)
			(void)FUNC1(&di->fg_psy->dev,
						 &ab8505_fg_sysfs_psy_attrs[i]);
	}
}