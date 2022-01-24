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
 int /*<<< orphan*/  gfs_driver ; 
 int gfs_registered ; 
 int /*<<< orphan*/  missing_funcs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct ffs_data *ffs)
{
	missing_funcs++;

	if (gfs_registered)
		FUNC0(&gfs_driver);
	gfs_registered = false;
}