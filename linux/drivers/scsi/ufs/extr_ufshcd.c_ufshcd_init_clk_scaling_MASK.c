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
typedef  int /*<<< orphan*/  wq_name ;
struct TYPE_3__ {int /*<<< orphan*/  workq; int /*<<< orphan*/  resume_work; int /*<<< orphan*/  suspend_work; } ;
struct ufs_hba {TYPE_1__ clk_scaling; TYPE_2__* host; } ;
struct TYPE_4__ {int host_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 int /*<<< orphan*/  ufshcd_clk_scaling_resume_work ; 
 int /*<<< orphan*/  ufshcd_clk_scaling_suspend_work ; 
 int /*<<< orphan*/  FUNC3 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct ufs_hba*) ; 

__attribute__((used)) static void FUNC5(struct ufs_hba *hba)
{
	char wq_name[sizeof("ufs_clkscaling_00")];

	if (!FUNC4(hba))
		return;

	FUNC0(&hba->clk_scaling.suspend_work,
		  ufshcd_clk_scaling_suspend_work);
	FUNC0(&hba->clk_scaling.resume_work,
		  ufshcd_clk_scaling_resume_work);

	FUNC2(wq_name, sizeof(wq_name), "ufs_clkscaling_%d",
		 hba->host->host_no);
	hba->clk_scaling.workq = FUNC1(wq_name);

	FUNC3(hba);
}