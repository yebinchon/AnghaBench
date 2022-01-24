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
typedef  scalar_t__ u16 ;
struct bnx2i_hba {int /*<<< orphan*/  shost; int /*<<< orphan*/  adapter_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADAPTER_STATE_GOING_DOWN ; 
 int /*<<< orphan*/  ADAPTER_STATE_UP ; 
#define  NETDEV_CHANGE 131 
#define  NETDEV_DOWN 130 
#define  NETDEV_GOING_DOWN 129 
#define  NETDEV_UP 128 
 int /*<<< orphan*/  bnx2i_drop_session ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2i_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2i_hba*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void *context, unsigned long event,
				    u16 vlan_id)
{
	struct bnx2i_hba *hba = context;

	/* Ignore all netevent coming from vlans */
	if (vlan_id != 0)
		return;

	switch (event) {
	case NETDEV_UP:
		if (!FUNC5(ADAPTER_STATE_UP, &hba->adapter_state))
			FUNC1(hba);
		break;
	case NETDEV_DOWN:
		FUNC2(ADAPTER_STATE_GOING_DOWN, &hba->adapter_state);
		FUNC2(ADAPTER_STATE_UP, &hba->adapter_state);
		break;
	case NETDEV_GOING_DOWN:
		FUNC4(ADAPTER_STATE_GOING_DOWN, &hba->adapter_state);
		FUNC3(hba->shost,
					    bnx2i_drop_session);
		break;
	case NETDEV_CHANGE:
		FUNC0(hba);
		break;
	default:
		;
	}
}