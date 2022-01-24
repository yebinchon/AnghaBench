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
struct ffs_dev {TYPE_1__* ffs_data; int /*<<< orphan*/  entry; } ;
struct TYPE_2__ {int /*<<< orphan*/ * private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ffs_devices ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct ffs_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ffs_dev *dev)
{
	FUNC2(&dev->entry);

	/* Clear the private_data pointer to stop incorrect dev access */
	if (dev->ffs_data)
		dev->ffs_data->private_data = NULL;

	FUNC1(dev);
	if (FUNC3(&ffs_devices))
		FUNC0();
}