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
struct bnx2i_hba {int /*<<< orphan*/  adapter_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADAPTER_STATE_INIT_FAILED ; 
 int /*<<< orphan*/  ADAPTER_STATE_UP ; 
 int /*<<< orphan*/  BNX2I_INIT_POLL_TIME ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2i_hba*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(void *handle)
{
#define BNX2I_INIT_POLL_TIME	(1000 / HZ)
	struct bnx2i_hba *hba = handle;
	int i = HZ;

	/* On some bnx2x devices, it is possible that iSCSI is no
	 * longer supported after firmware is downloaded.  In that
	 * case, the iscsi_init_msg will return failure.
	 */

	FUNC0(hba);
	while (!FUNC2(ADAPTER_STATE_UP, &hba->adapter_state) &&
	       !FUNC2(ADAPTER_STATE_INIT_FAILED, &hba->adapter_state) && i--)
		FUNC1(BNX2I_INIT_POLL_TIME);
}