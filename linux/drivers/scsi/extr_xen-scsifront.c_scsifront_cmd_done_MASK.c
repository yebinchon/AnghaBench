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
struct vscsifrnt_info {int /*<<< orphan*/  wq_sync; TYPE_1__* host; scalar_t__ wait_ring_available; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int FUNC0 (struct vscsifrnt_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct vscsifrnt_info *info)
{
	int more_to_do;
	unsigned long flags;

	FUNC1(info->host->host_lock, flags);

	more_to_do = FUNC0(info);

	info->wait_ring_available = 0;

	FUNC2(info->host->host_lock, flags);

	FUNC3(&info->wq_sync);

	return more_to_do;
}