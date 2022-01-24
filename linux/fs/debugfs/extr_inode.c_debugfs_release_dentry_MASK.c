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
struct dentry {void* d_fsdata; } ;

/* Variables and functions */
 unsigned long DEBUGFS_FSDATA_IS_REAL_FOPS_BIT ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 

__attribute__((used)) static void FUNC1(struct dentry *dentry)
{
	void *fsd = dentry->d_fsdata;

	if (!((unsigned long)fsd & DEBUGFS_FSDATA_IS_REAL_FOPS_BIT))
		FUNC0(dentry->d_fsdata);
}