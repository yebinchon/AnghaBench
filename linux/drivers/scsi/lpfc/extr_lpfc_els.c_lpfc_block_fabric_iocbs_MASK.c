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
struct lpfc_hba {int /*<<< orphan*/  fabric_block_timer; int /*<<< orphan*/  bit_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FABRIC_COMANDS_BLOCKED ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct lpfc_hba *phba)
{
	int blocked;

	blocked = FUNC2(FABRIC_COMANDS_BLOCKED, &phba->bit_flags);
	/* Start a timer to unblock fabric iocbs after 100ms */
	if (!blocked)
		FUNC0(&phba->fabric_block_timer,
			  jiffies + FUNC1(100));

	return;
}