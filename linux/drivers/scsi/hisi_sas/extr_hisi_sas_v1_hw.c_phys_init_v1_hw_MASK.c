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
struct timer_list {int dummy; } ;
struct hisi_hba {int n_phy; struct timer_list timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHL_INT2_MSK ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC0 (struct hisi_hba*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hisi_hba*,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct timer_list*,scalar_t__) ; 
 int /*<<< orphan*/  start_phys_v1_hw ; 
 int /*<<< orphan*/  FUNC3 (struct timer_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct hisi_hba *hisi_hba)
{
	int i;
	struct timer_list *timer = &hisi_hba->timer;

	for (i = 0; i < hisi_hba->n_phy; i++) {
		FUNC1(hisi_hba, i, CHL_INT2_MSK, 0x6a);
		FUNC0(hisi_hba, i, CHL_INT2_MSK);
	}

	FUNC3(timer, start_phys_v1_hw, 0);
	FUNC2(timer, jiffies + HZ);
}