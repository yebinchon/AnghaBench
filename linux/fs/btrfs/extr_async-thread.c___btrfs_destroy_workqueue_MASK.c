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
struct __btrfs_workqueue {int /*<<< orphan*/  normal_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct __btrfs_workqueue*) ; 
 int /*<<< orphan*/  FUNC2 (struct __btrfs_workqueue*) ; 

__attribute__((used)) static inline void
FUNC3(struct __btrfs_workqueue *wq)
{
	FUNC0(wq->normal_wq);
	FUNC2(wq);
	FUNC1(wq);
}