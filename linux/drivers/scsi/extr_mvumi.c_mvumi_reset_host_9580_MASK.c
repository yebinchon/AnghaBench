#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mvumi_hba {TYPE_2__* pdev; TYPE_1__* regs; int /*<<< orphan*/  fw_state; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  reset_request; int /*<<< orphan*/  reset_enable; } ;

/* Variables and functions */
 int FAILED ; 
 int /*<<< orphan*/  FW_STATE_ABORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct mvumi_hba*) ; 
 int FUNC5 (struct mvumi_hba*) ; 
 int FUNC6 (struct mvumi_hba*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC9(struct mvumi_hba *mhba)
{
	mhba->fw_state = FW_STATE_ABORT;

	FUNC1(0, mhba->regs->reset_enable);
	FUNC1(0xf, mhba->regs->reset_request);

	FUNC1(0x10, mhba->regs->reset_enable);
	FUNC1(0x10, mhba->regs->reset_request);
	FUNC2(100);
	FUNC7(mhba->pdev);

	if (FUNC8(mhba->pdev)) {
		FUNC0(&mhba->pdev->dev, "enable device failed\n");
		return FAILED;
	}
	if (FUNC3(mhba->pdev)) {
		FUNC0(&mhba->pdev->dev, "set master failed\n");
		return FAILED;
	}
	FUNC4(mhba);
	if (FUNC5(mhba) == FAILED)
		return FAILED;

	return FUNC6(mhba);
}