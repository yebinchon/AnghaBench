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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct extent_changeset*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct inode *inode,
				  struct extent_changeset *reserved,
				  u64 start, u64 len, bool qgroup_free)
{
	FUNC1(FUNC0(inode), len, qgroup_free);
	FUNC2(inode, reserved, start, len);
}