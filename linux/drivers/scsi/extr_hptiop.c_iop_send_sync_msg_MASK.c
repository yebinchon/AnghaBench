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
typedef  scalar_t__ u32 ;
struct hptiop_hba {scalar_t__ msg_done; TYPE_2__* ops; TYPE_1__* host; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* enable_intr ) (struct hptiop_hba*) ;int /*<<< orphan*/  (* iop_intr ) (struct hptiop_hba*) ;int /*<<< orphan*/  (* post_msg ) (struct hptiop_hba*,scalar_t__) ;int /*<<< orphan*/  (* disable_intr ) (struct hptiop_hba*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hptiop_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct hptiop_hba*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct hptiop_hba*) ; 
 int /*<<< orphan*/  FUNC6 (struct hptiop_hba*) ; 

__attribute__((used)) static int FUNC7(struct hptiop_hba *hba, u32 msg, u32 millisec)
{
	u32 i;

	hba->msg_done = 0;
	hba->ops->disable_intr(hba);
	hba->ops->post_msg(hba, msg);

	for (i = 0; i < millisec; i++) {
		FUNC1(hba->host->host_lock);
		hba->ops->iop_intr(hba);
		FUNC2(hba->host->host_lock);
		if (hba->msg_done)
			break;
		FUNC0(1);
	}

	hba->ops->enable_intr(hba);
	return hba->msg_done? 0 : -1;
}