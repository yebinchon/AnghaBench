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
struct hisi_hba {TYPE_1__* hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* snapshot_restore ) (struct hisi_hba*) ;int /*<<< orphan*/  (* snapshot_prepare ) (struct hisi_hba*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC6 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC7 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC8 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC9 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC10 (struct hisi_hba*) ; 

__attribute__((used)) static void FUNC11(struct hisi_hba *hisi_hba)
{
	hisi_hba->hw->snapshot_prepare(hisi_hba);

	FUNC4(hisi_hba);
	FUNC7(hisi_hba);
	FUNC1(hisi_hba);
	FUNC8(hisi_hba);
	FUNC2(hisi_hba);
	FUNC3(hisi_hba);
	FUNC6(hisi_hba);
	FUNC5(hisi_hba);

	FUNC0(hisi_hba);

	hisi_hba->hw->snapshot_restore(hisi_hba);
}