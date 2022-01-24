#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ffs_dev {int mounted; int /*<<< orphan*/  (* ffs_release_dev_callback ) (struct ffs_dev*) ;} ;
struct ffs_data {struct ffs_dev* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct ffs_dev*) ; 

__attribute__((used)) static void FUNC4(struct ffs_data *ffs_data)
{
	struct ffs_dev *ffs_dev;

	FUNC0();
	FUNC1();

	ffs_dev = ffs_data->private_data;
	if (ffs_dev) {
		ffs_dev->mounted = false;

		if (ffs_dev->ffs_release_dev_callback)
			ffs_dev->ffs_release_dev_callback(ffs_dev);
	}

	FUNC2();
}