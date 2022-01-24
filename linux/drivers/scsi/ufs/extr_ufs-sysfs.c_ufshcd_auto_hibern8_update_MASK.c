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
typedef  scalar_t__ u32 ;
struct ufs_hba {scalar_t__ ahit; TYPE_1__* host; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_AUTO_HIBERNATE_IDLE_TIMER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct ufs_hba*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ufs_hba *hba, u32 ahit)
{
	unsigned long flags;

	if (!FUNC3(hba))
		return;

	FUNC1(hba->host->host_lock, flags);
	if (hba->ahit == ahit)
		goto out_unlock;
	hba->ahit = ahit;
	if (!FUNC0(hba->dev))
		FUNC4(hba, hba->ahit, REG_AUTO_HIBERNATE_IDLE_TIMER);
out_unlock:
	FUNC2(hba->host->host_lock, flags);
}