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
struct hisi_hba {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLVRY_QUEUE_ENABLE ; 
 int /*<<< orphan*/  HISI_SAS_REJECT_CMD_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct hisi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hisi_hba*,int,int) ; 

__attribute__((used)) static void FUNC4(struct hisi_hba *hisi_hba)
{
	FUNC2(HISI_SAS_REJECT_CMD_BIT, &hisi_hba->flags);

	FUNC1(hisi_hba, DLVRY_QUEUE_ENABLE, 0);

	FUNC3(hisi_hba, 100, 5000);

	FUNC0(hisi_hba);
}