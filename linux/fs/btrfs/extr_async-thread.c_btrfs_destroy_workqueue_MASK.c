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
struct btrfs_workqueue {scalar_t__ normal; scalar_t__ high; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_workqueue*) ; 

void FUNC2(struct btrfs_workqueue *wq)
{
	if (!wq)
		return;
	if (wq->high)
		FUNC0(wq->high);
	FUNC0(wq->normal);
	FUNC1(wq);
}