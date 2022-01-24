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
struct TYPE_2__ {int /*<<< orphan*/  device; int /*<<< orphan*/  available_instances; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_ZDEV_ENTRIES_EXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* matrix_dev ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vfio_ap_matrix_ops ; 

int FUNC2(void)
{
	FUNC0(&matrix_dev->available_instances, MAX_ZDEV_ENTRIES_EXT);

	return FUNC1(&matrix_dev->device, &vfio_ap_matrix_ops);
}