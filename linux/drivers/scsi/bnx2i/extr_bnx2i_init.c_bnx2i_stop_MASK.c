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
struct bnx2i_hba {int hba_shutdown_tmo; int ofld_conns_active; int /*<<< orphan*/  adapter_state; int /*<<< orphan*/  eh_wait; int /*<<< orphan*/  ep_destroy_list; int /*<<< orphan*/  ep_ofld_list; int /*<<< orphan*/  shost; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADAPTER_STATE_GOING_DOWN ; 
 int /*<<< orphan*/  ADAPTER_STATE_UP ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2i_hba*) ; 
 int /*<<< orphan*/  bnx2i_drop_session ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 

void FUNC6(void *handle)
{
	struct bnx2i_hba *hba = handle;
	int conns_active;
	int wait_delay = 1 * HZ;

	/* check if cleanup happened in GOING_DOWN context */
	if (!FUNC4(ADAPTER_STATE_GOING_DOWN,
			      &hba->adapter_state)) {
		FUNC2(hba->shost,
					    bnx2i_drop_session);
		wait_delay = hba->hba_shutdown_tmo;
	}
	/* Wait for inflight offload connection tasks to complete before
	 * proceeding. Forcefully terminate all connection recovery in
	 * progress at the earliest, either in bind(), send_pdu(LOGIN),
	 * or conn_start()
	 */
	FUNC5(hba->eh_wait,
					 (FUNC3(&hba->ep_ofld_list) &&
					 FUNC3(&hba->ep_destroy_list)),
					 2 * HZ);
	/* Wait for all endpoints to be torn down, Chip will be reset once
	 *  control returns to network driver. So it is required to cleanup and
	 * release all connection resources before returning from this routine.
	 */
	while (hba->ofld_conns_active) {
		conns_active = hba->ofld_conns_active;
		FUNC5(hba->eh_wait,
				(hba->ofld_conns_active != conns_active),
				wait_delay);
		if (hba->ofld_conns_active == conns_active)
			break;
	}
	FUNC0(hba);

	/* This flag should be cleared last so that ep_disconnect() gracefully
	 * cleans up connection context
	 */
	FUNC1(ADAPTER_STATE_GOING_DOWN, &hba->adapter_state);
	FUNC1(ADAPTER_STATE_UP, &hba->adapter_state);
}