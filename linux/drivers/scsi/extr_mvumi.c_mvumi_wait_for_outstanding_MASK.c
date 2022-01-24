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
struct mvumi_hba {int /*<<< orphan*/  fw_state; } ;

/* Variables and functions */
 int FAILED ; 
 int /*<<< orphan*/  FW_STATE_ABORT ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct mvumi_hba*) ; 
 scalar_t__ FUNC1 (struct mvumi_hba*) ; 

__attribute__((used)) static int FUNC2(struct mvumi_hba *mhba)
{
	mhba->fw_state = FW_STATE_ABORT;
	FUNC0(mhba);

	if (FUNC1(mhba))
		return FAILED;
	else
		return SUCCESS;
}