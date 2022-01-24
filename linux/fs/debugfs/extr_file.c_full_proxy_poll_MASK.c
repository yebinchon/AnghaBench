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
struct poll_table_struct {int dummy; } ;
struct file_operations {int /*<<< orphan*/  (* poll ) (struct file*,struct poll_table_struct*) ;} ;
struct file {int dummy; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  __poll_t ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLHUP ; 
 struct dentry* FUNC0 (struct file*) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct file_operations* FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct file*,struct poll_table_struct*) ; 

__attribute__((used)) static __poll_t FUNC5(struct file *filp,
				struct poll_table_struct *wait)
{
	struct dentry *dentry = FUNC0(filp);
	__poll_t r = 0;
	const struct file_operations *real_fops;

	if (FUNC1(dentry))
		return EPOLLHUP;

	real_fops = FUNC3(filp);
	r = real_fops->poll(filp, wait);
	FUNC2(dentry);
	return r;
}