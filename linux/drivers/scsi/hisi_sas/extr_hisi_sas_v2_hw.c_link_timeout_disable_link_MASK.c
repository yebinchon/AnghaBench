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
struct timer_list {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  function; } ;
struct hisi_hba {int n_phy; int reject_stp_links_msk; TYPE_1__ timer; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CON_CONTROL ; 
 int /*<<< orphan*/  PHY_STATE ; 
 struct hisi_hba* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct hisi_hba* hisi_hba ; 
 int /*<<< orphan*/  FUNC2 (struct hisi_hba*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct hisi_hba*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  link_timeout_enable_link ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct hisi_hba *hisi_hba = FUNC1(hisi_hba, t, timer);
	int i, reg_val;

	reg_val = FUNC3(hisi_hba, PHY_STATE);
	for (i = 0; i < hisi_hba->n_phy && reg_val; i++) {
		if (hisi_hba->reject_stp_links_msk & FUNC0(i))
			continue;

		if (reg_val & FUNC0(i)) {
			FUNC2(hisi_hba, i,
					CON_CONTROL, 0x6);
			break;
		}
	}

	hisi_hba->timer.function = link_timeout_enable_link;
	FUNC4(&hisi_hba->timer, jiffies + FUNC5(100));
}