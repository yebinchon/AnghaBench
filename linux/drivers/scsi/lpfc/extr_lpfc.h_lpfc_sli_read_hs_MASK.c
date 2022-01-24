#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  err_attn_event; } ;
struct TYPE_6__ {TYPE_2__ slistat; } ;
struct lpfc_hba {TYPE_1__* pport; int /*<<< orphan*/  HAregaddr; int /*<<< orphan*/ * work_status; scalar_t__ MBslimaddr; int /*<<< orphan*/  work_hs; scalar_t__ HSregaddr; TYPE_3__ sli; } ;
struct TYPE_4__ {int stopped; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  HA_ERATT ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC3(struct lpfc_hba *phba)
{
	/*
	 * There was a link/board error. Read the status register to retrieve
	 * the error event and process it.
	 */
	phba->sli.slistat.err_attn_event++;

	/* Save status info and check for unplug error */
	if (FUNC0(phba->HSregaddr, &phba->work_hs) ||
		FUNC0(phba->MBslimaddr + 0xa8, &phba->work_status[0]) ||
		FUNC0(phba->MBslimaddr + 0xac, &phba->work_status[1])) {
		return -EIO;
	}

	/* Clear chip Host Attention error bit */
	FUNC2(HA_ERATT, phba->HAregaddr);
	FUNC1(phba->HAregaddr); /* flush */
	phba->pport->stopped = 1;

	return 0;
}