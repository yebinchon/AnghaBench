#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mvumi_hba {TYPE_1__* pdev; int /*<<< orphan*/  regs; int /*<<< orphan*/  handshake_page_phys; int /*<<< orphan*/  handshake_page; int /*<<< orphan*/  base_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HSP_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mvumi_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct mvumi_hba*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(struct mvumi_hba *mhba)
{
	FUNC2(mhba);
	FUNC3(mhba);
	FUNC4(mhba->pdev, mhba->base_addr);
	FUNC0(&mhba->pdev->dev, HSP_MAX_SIZE,
		mhba->handshake_page, mhba->handshake_page_phys);
	FUNC1(mhba->regs);
	FUNC5(mhba->pdev);
}