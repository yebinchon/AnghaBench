#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct erofs_map_blocks {int /*<<< orphan*/ * mpage; } ;
struct TYPE_2__ {int /*<<< orphan*/  datalayout; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,struct erofs_map_blocks*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct inode*,struct erofs_map_blocks*,int) ; 

int FUNC5(struct inode *inode,
		     struct erofs_map_blocks *map, int flags)
{
	if (FUNC1(FUNC0(inode)->datalayout)) {
		int err = FUNC4(inode, map, flags);

		if (map->mpage) {
			FUNC3(map->mpage);
			map->mpage = NULL;
		}
		return err;
	}
	return FUNC2(inode, map, flags);
}