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
struct p9_fid {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*,struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct dentry *dentry, struct p9_fid *fid)
{
	FUNC1(&dentry->d_lock);
	FUNC0(dentry, fid);
	FUNC2(&dentry->d_lock);
}