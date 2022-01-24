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
typedef  int /*<<< orphan*/  u64 ;
struct inode {int dummy; } ;
struct extent_changeset {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*,struct extent_changeset**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct extent_changeset*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct inode *inode,
			struct extent_changeset **reserved, u64 start, u64 len)
{
	int ret;

	ret = FUNC1(inode, reserved, start, len);
	if (ret < 0)
		return ret;
	ret = FUNC2(FUNC0(inode), len);
	if (ret < 0)
		FUNC3(inode, *reserved, start, len);
	return ret;
}