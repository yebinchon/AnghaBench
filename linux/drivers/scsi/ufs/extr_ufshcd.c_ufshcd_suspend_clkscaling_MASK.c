#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int is_suspended; } ;
struct ufs_hba {TYPE_2__* host; TYPE_1__ clk_scaling; } ;
struct TYPE_4__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct ufs_hba*) ; 

__attribute__((used)) static void FUNC4(struct ufs_hba *hba)
{
	unsigned long flags;
	bool suspend = false;

	if (!FUNC3(hba))
		return;

	FUNC1(hba->host->host_lock, flags);
	if (!hba->clk_scaling.is_suspended) {
		suspend = true;
		hba->clk_scaling.is_suspended = true;
	}
	FUNC2(hba->host->host_lock, flags);

	if (suspend)
		FUNC0(hba);
}