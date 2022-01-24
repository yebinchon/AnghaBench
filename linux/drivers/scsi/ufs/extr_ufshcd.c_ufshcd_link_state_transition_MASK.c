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
struct ufs_hba {int uic_link_state; int /*<<< orphan*/  auto_bkops_enabled; } ;
typedef  enum uic_link_state { ____Placeholder_uic_link_state } uic_link_state ;

/* Variables and functions */
 int UIC_LINK_HIBERN8_STATE ; 
 int UIC_LINK_OFF_STATE ; 
 int /*<<< orphan*/  FUNC0 (struct ufs_hba*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct ufs_hba*) ; 
 int FUNC3 (struct ufs_hba*) ; 

__attribute__((used)) static int FUNC4(struct ufs_hba *hba,
					enum uic_link_state req_link_state,
					int check_for_bkops)
{
	int ret = 0;

	if (req_link_state == hba->uic_link_state)
		return 0;

	if (req_link_state == UIC_LINK_HIBERN8_STATE) {
		ret = FUNC3(hba);
		if (!ret)
			FUNC1(hba);
		else
			goto out;
	}
	/*
	 * If autobkops is enabled, link can't be turned off because
	 * turning off the link would also turn off the device.
	 */
	else if ((req_link_state == UIC_LINK_OFF_STATE) &&
		   (!check_for_bkops || (check_for_bkops &&
		    !hba->auto_bkops_enabled))) {
		/*
		 * Let's make sure that link is in low power mode, we are doing
		 * this currently by putting the link in Hibern8. Otherway to
		 * put the link in low power mode is to send the DME end point
		 * to device and then send the DME reset command to local
		 * unipro. But putting the link in hibern8 is much faster.
		 */
		ret = FUNC3(hba);
		if (ret)
			goto out;
		/*
		 * Change controller state to "reset state" which
		 * should also put the link in off/reset state
		 */
		FUNC0(hba, true);
		/*
		 * TODO: Check if we need any delay to make sure that
		 * controller is reset
		 */
		FUNC2(hba);
	}

out:
	return ret;
}