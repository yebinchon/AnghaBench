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
struct TYPE_2__ {int /*<<< orphan*/  enable_attr; } ;
struct ufs_hba {TYPE_1__ clk_scaling; int /*<<< orphan*/  dev; int /*<<< orphan*/  intr_mask; int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ufs_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC6 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC7 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC8 (struct ufs_hba*,int) ; 
 scalar_t__ FUNC9 (struct ufs_hba*) ; 

void FUNC10(struct ufs_hba *hba)
{
	FUNC2(hba);
	FUNC3(hba->dev);
	FUNC1(hba->host);
	/* disable interrupts */
	FUNC4(hba, hba->intr_mask);
	FUNC8(hba, true);

	FUNC6(hba);
	FUNC5(hba);
	if (FUNC9(hba))
		FUNC0(hba->dev, &hba->clk_scaling.enable_attr);
	FUNC7(hba);
}