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
struct TYPE_2__ {int retry; unsigned int s_handle; int /*<<< orphan*/  action; scalar_t__ tag; scalar_t__ boot_kset; } ;
struct beiscsi_hba {int /*<<< orphan*/  boot_work; TYPE_1__ boot_struct; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEISCSI_BOOT_GET_SHANDLE ; 
 int /*<<< orphan*/  BEISCSI_HBA_BOOT_WORK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(struct beiscsi_hba *phba, unsigned int s_handle)
{
	if (phba->boot_struct.boot_kset)
		return;

	/* skip if boot work is already in progress */
	if (FUNC1(BEISCSI_HBA_BOOT_WORK, &phba->state))
		return;

	phba->boot_struct.retry = 3;
	phba->boot_struct.tag = 0;
	phba->boot_struct.s_handle = s_handle;
	phba->boot_struct.action = BEISCSI_BOOT_GET_SHANDLE;
	FUNC0(&phba->boot_work);
}