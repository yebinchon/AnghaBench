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
typedef  int u32 ;
struct qtnf_shm_ipc {int /*<<< orphan*/  tx_completion; int /*<<< orphan*/  waiting_for_ack; TYPE_3__* shm_region; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;
struct TYPE_6__ {TYPE_2__ headroom; } ;

/* Variables and functions */
 int QTNF_SHM_IPC_ACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct qtnf_shm_ipc *ipc)
{
	u32 flags;

	if (!FUNC0(ipc->waiting_for_ack))
		return;

	flags = FUNC3(&ipc->shm_region->headroom.hdr.flags);

	if (flags & QTNF_SHM_IPC_ACK) {
		FUNC1(ipc->waiting_for_ack, 0);
		FUNC2(&ipc->tx_completion);
	}
}