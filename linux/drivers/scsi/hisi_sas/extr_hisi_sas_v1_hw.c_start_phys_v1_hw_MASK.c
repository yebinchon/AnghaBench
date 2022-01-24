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
struct hisi_hba {int n_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHL_INT2_MSK ; 
 struct hisi_hba* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct hisi_hba* hisi_hba ; 
 int /*<<< orphan*/  FUNC1 (struct hisi_hba*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hisi_hba*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct hisi_hba *hisi_hba = FUNC0(hisi_hba, t, timer);
	int i;

	for (i = 0; i < hisi_hba->n_phy; i++) {
		FUNC2(hisi_hba, i, CHL_INT2_MSK, 0x12a);
		FUNC1(hisi_hba, i, 1);
	}
}