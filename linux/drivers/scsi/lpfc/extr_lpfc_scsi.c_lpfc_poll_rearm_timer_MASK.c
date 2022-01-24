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
struct TYPE_4__ {TYPE_1__* sli3_ring; } ;
struct lpfc_hba {int /*<<< orphan*/  fcp_poll_timer; TYPE_2__ sli; int /*<<< orphan*/  cfg_poll_tmo; } ;
struct TYPE_3__ {int /*<<< orphan*/  txcmplq; } ;

/* Variables and functions */
 size_t LPFC_FCP_RING ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline__ void FUNC3(struct lpfc_hba * phba)
{
	unsigned long  poll_tmo_expires =
		(jiffies + FUNC2(phba->cfg_poll_tmo));

	if (!FUNC0(&phba->sli.sli3_ring[LPFC_FCP_RING].txcmplq))
		FUNC1(&phba->fcp_poll_timer,
			  poll_tmo_expires);
}