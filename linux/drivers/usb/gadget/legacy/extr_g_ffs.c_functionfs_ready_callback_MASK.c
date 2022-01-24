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
struct ffs_data {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  gfs_driver ; 
 int gfs_registered ; 
 scalar_t__ missing_funcs ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct ffs_data *ffs)
{
	int ret = 0;

	if (--missing_funcs)
		return 0;

	if (gfs_registered)
		return -EBUSY;

	gfs_registered = true;

	ret = FUNC1(&gfs_driver);
	if (FUNC0(ret < 0)) {
		++missing_funcs;
		gfs_registered = false;
	}

	return ret;
}