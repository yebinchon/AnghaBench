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
struct configfs_dirent {int s_type; } ;

/* Variables and functions */
 int CONFIGFS_USET_CREATING ; 
 int /*<<< orphan*/  configfs_dirent_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct configfs_dirent *sd)
{
	int ret;

	FUNC0(&configfs_dirent_lock);
	ret = !(sd->s_type & CONFIGFS_USET_CREATING);
	FUNC1(&configfs_dirent_lock);

	return ret;
}