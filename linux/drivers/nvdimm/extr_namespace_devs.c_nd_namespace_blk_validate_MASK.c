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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct nd_namespace_blk {TYPE_1__ common; } ;
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nd_namespace_blk*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

resource_size_t FUNC3(struct nd_namespace_blk *nsblk)
{
	resource_size_t size;

	FUNC1(&nsblk->common.dev);
	size = FUNC0(nsblk);
	FUNC2(&nsblk->common.dev);

	return size;
}