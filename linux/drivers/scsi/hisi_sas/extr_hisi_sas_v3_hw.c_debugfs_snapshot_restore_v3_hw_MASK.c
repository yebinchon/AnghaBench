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
typedef  int /*<<< orphan*/  u32 ;
struct hisi_hba {unsigned long long queue_count; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLVRY_QUEUE_ENABLE ; 
 int /*<<< orphan*/  HISI_SAS_REJECT_CMD_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hisi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct hisi_hba *hisi_hba)
{
	FUNC1(hisi_hba, DLVRY_QUEUE_ENABLE,
			 (u32)((1ULL << hisi_hba->queue_count) - 1));

	FUNC0(HISI_SAS_REJECT_CMD_BIT, &hisi_hba->flags);
}