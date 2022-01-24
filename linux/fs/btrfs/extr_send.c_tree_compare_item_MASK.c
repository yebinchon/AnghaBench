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
struct btrfs_path {int /*<<< orphan*/ * nodes; int /*<<< orphan*/ * slots; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long,int) ; 

__attribute__((used)) static int FUNC4(struct btrfs_path *left_path,
			     struct btrfs_path *right_path,
			     char *tmp_buf)
{
	int cmp;
	int len1, len2;
	unsigned long off1, off2;

	len1 = FUNC1(left_path->nodes[0], left_path->slots[0]);
	len2 = FUNC1(right_path->nodes[0], right_path->slots[0]);
	if (len1 != len2)
		return 1;

	off1 = FUNC0(left_path->nodes[0], left_path->slots[0]);
	off2 = FUNC0(right_path->nodes[0],
				right_path->slots[0]);

	FUNC3(left_path->nodes[0], tmp_buf, off1, len1);

	cmp = FUNC2(right_path->nodes[0], tmp_buf, off2, len1);
	if (cmp)
		return 1;
	return 0;
}