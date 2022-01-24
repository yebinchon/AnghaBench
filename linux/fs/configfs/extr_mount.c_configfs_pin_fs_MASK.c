#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dentry {int dummy; } ;
struct TYPE_3__ {struct dentry* mnt_root; } ;

/* Variables and functions */
 struct dentry* FUNC0 (int) ; 
 int /*<<< orphan*/  configfs_fs_type ; 
 int /*<<< orphan*/  configfs_mnt_count ; 
 TYPE_1__* configfs_mount ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__**,int /*<<< orphan*/ *) ; 

struct dentry *FUNC2(void)
{
	int err = FUNC1(&configfs_fs_type, &configfs_mount,
			     &configfs_mnt_count);
	return err ? FUNC0(err) : configfs_mount->mnt_root;
}