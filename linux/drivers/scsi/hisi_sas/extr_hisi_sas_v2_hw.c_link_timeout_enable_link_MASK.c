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
 struct hisi_hba* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct hisi_hba* hisi_hba ; 
 int FUNC2 (struct hisi_hba*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hisi_hba*,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  link_timeout_disable_link ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct hisi_hba *hisi_hba = FUNC1(hisi_hba, t, timer);
	int i, reg_val;

	for (i = 0; i < hisi_hba->n_phy; i++) {
		if (hisi_hba->reject_stp_links_msk & FUNC0(i))
			continue;

		reg_val = FUNC2(hisi_hba, i, CON_CONTROL);
		if (!(reg_val & FUNC0(0))) {
			FUNC3(hisi_hba, i,
					CON_CONTROL, 0x7);
			break;
		}
	}

	hisi_hba->timer.function = link_timeout_disable_link;
	FUNC4(&hisi_hba->timer, jiffies + FUNC5(900));
}