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
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  QUOTA_CHECK_MAX_BYTES_OP ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (struct inode*) ; 

bool FUNC3(struct inode *inode, loff_t newsize)
{
	loff_t size = FUNC2(inode);

	if (!FUNC0(inode))
		return false;

	/* return immediately if we're decreasing file size */
	if (newsize <= size)
		return false;

	return FUNC1(inode, QUOTA_CHECK_MAX_BYTES_OP, (newsize - size));
}