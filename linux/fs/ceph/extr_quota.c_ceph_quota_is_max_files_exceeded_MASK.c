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
struct inode {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  QUOTA_CHECK_MAX_FILES_OP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC4(struct inode *inode)
{
	if (!FUNC2(inode))
		return false;

	FUNC1(!FUNC0(inode->i_mode));

	return FUNC3(inode, QUOTA_CHECK_MAX_FILES_OP, 0);
}