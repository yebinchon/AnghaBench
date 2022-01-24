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
typedef  int /*<<< orphan*/  ulong ;
typedef  int /*<<< orphan*/  uint ;
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 long FUNC0 (struct inode*,struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adpt_mutex ; 
 struct inode* FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC4(struct file *file, uint cmd, ulong arg)
{
	struct inode *inode;
	long ret;
 
	inode = FUNC1(file);
 
	FUNC2(&adpt_mutex);
	ret = FUNC0(inode, file, cmd, arg);
	FUNC3(&adpt_mutex);

	return ret;
}