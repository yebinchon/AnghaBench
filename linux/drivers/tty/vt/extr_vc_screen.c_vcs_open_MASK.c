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
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int EOPNOTSUPP ; 
 unsigned int FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 

__attribute__((used)) static int
FUNC6(struct inode *inode, struct file *filp)
{
	unsigned int currcons = FUNC0(inode);
	bool attr = FUNC3(inode);
	bool uni_mode = FUNC4(inode);
	int ret = 0;

	/* we currently don't support attributes in unicode mode */
	if (attr && uni_mode)
		return -EOPNOTSUPP;

	FUNC1();
	if(currcons && !FUNC5(currcons-1))
		ret = -ENXIO;
	FUNC2();
	return ret;
}