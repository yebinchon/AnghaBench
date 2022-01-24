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
typedef  int u32 ;
struct wlandevice {int msdstate; int /*<<< orphan*/  macmode; int /*<<< orphan*/  netdev; int /*<<< orphan*/  hwremoved; struct hfa384x* priv; } ;
struct hfa384x {int join_retries; int /*<<< orphan*/  join_ap; } ;

/* Variables and functions */
#define  P80211ENUM_ifstate_disable 134 
#define  P80211ENUM_ifstate_enable 133 
#define  P80211ENUM_ifstate_fwload 132 
 int P80211ENUM_resultcode_implementation_failure ; 
 int P80211ENUM_resultcode_invalid_parameters ; 
 int P80211ENUM_resultcode_success ; 
 int /*<<< orphan*/  WLAN_MACMODE_NONE ; 
#define  WLAN_MSD_FWLOAD 131 
 int WLAN_MSD_FWLOAD_PENDING ; 
#define  WLAN_MSD_HWFAIL 130 
#define  WLAN_MSD_HWPRESENT 129 
 int WLAN_MSD_HWPRESENT_PENDING ; 
#define  WLAN_MSD_RUNNING 128 
 int WLAN_MSD_RUNNING_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct hfa384x*) ; 
 int FUNC1 (struct hfa384x*) ; 
 int /*<<< orphan*/  FUNC2 (struct hfa384x*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 
 int FUNC7 (struct wlandevice*) ; 
 int FUNC8 (struct wlandevice*) ; 

u32 FUNC9(struct wlandevice *wlandev, u32 ifstate)
{
	struct hfa384x *hw = wlandev->priv;
	u32 result;

	result = P80211ENUM_resultcode_implementation_failure;

	FUNC6("Current MSD state(%d), requesting(%d)\n",
		 wlandev->msdstate, ifstate);
	switch (ifstate) {
	case P80211ENUM_ifstate_fwload:
		switch (wlandev->msdstate) {
		case WLAN_MSD_HWPRESENT:
			wlandev->msdstate = WLAN_MSD_FWLOAD_PENDING;
			/*
			 * Initialize the device+driver sufficiently
			 * for firmware loading.
			 */
			result = FUNC1(hw);
			if (result) {
				FUNC3(wlandev->netdev,
					   "hfa384x_drvr_start() failed,result=%d\n",
					   (int)result);
				result =
				 P80211ENUM_resultcode_implementation_failure;
				wlandev->msdstate = WLAN_MSD_HWPRESENT;
				break;
			}
			wlandev->msdstate = WLAN_MSD_FWLOAD;
			result = P80211ENUM_resultcode_success;
			break;
		case WLAN_MSD_FWLOAD:
			FUNC0(hw);
			result = P80211ENUM_resultcode_success;
			break;
		case WLAN_MSD_RUNNING:
			FUNC4(wlandev->netdev,
				    "Cannot enter fwload state from enable state, you must disable first.\n");
			result = P80211ENUM_resultcode_invalid_parameters;
			break;
		case WLAN_MSD_HWFAIL:
		default:
			/* probe() had a problem or the msdstate contains
			 * an unrecognized value, there's nothing we can do.
			 */
			result = P80211ENUM_resultcode_implementation_failure;
			break;
		}
		break;
	case P80211ENUM_ifstate_enable:
		switch (wlandev->msdstate) {
		case WLAN_MSD_HWPRESENT:
		case WLAN_MSD_FWLOAD:
			wlandev->msdstate = WLAN_MSD_RUNNING_PENDING;
			/* Initialize the device+driver for full
			 * operation. Note that this might me an FWLOAD to
			 * to RUNNING transition so we must not do a chip
			 * or board level reset.  Note that on failure,
			 * the MSD state is set to HWPRESENT because we
			 * can't make any assumptions about the state
			 * of the hardware or a previous firmware load.
			 */
			result = FUNC1(hw);
			if (result) {
				FUNC3(wlandev->netdev,
					   "hfa384x_drvr_start() failed,result=%d\n",
					   (int)result);
				result =
				  P80211ENUM_resultcode_implementation_failure;
				wlandev->msdstate = WLAN_MSD_HWPRESENT;
				break;
			}

			result = FUNC7(wlandev);
			if (result) {
				FUNC3(wlandev->netdev,
					   "prism2sta_getcardinfo() failed,result=%d\n",
					   (int)result);
				result =
				  P80211ENUM_resultcode_implementation_failure;
				FUNC2(hw);
				wlandev->msdstate = WLAN_MSD_HWPRESENT;
				break;
			}
			result = FUNC8(wlandev);
			if (result) {
				FUNC3(wlandev->netdev,
					   "prism2sta_globalsetup() failed,result=%d\n",
					   (int)result);
				result =
				  P80211ENUM_resultcode_implementation_failure;
				FUNC2(hw);
				wlandev->msdstate = WLAN_MSD_HWPRESENT;
				break;
			}
			wlandev->msdstate = WLAN_MSD_RUNNING;
			hw->join_ap = 0;
			hw->join_retries = 60;
			result = P80211ENUM_resultcode_success;
			break;
		case WLAN_MSD_RUNNING:
			/* Do nothing, we're already in this state. */
			result = P80211ENUM_resultcode_success;
			break;
		case WLAN_MSD_HWFAIL:
		default:
			/* probe() had a problem or the msdstate contains
			 * an unrecognized value, there's nothing we can do.
			 */
			result = P80211ENUM_resultcode_implementation_failure;
			break;
		}
		break;
	case P80211ENUM_ifstate_disable:
		switch (wlandev->msdstate) {
		case WLAN_MSD_HWPRESENT:
			/* Do nothing, we're already in this state. */
			result = P80211ENUM_resultcode_success;
			break;
		case WLAN_MSD_FWLOAD:
		case WLAN_MSD_RUNNING:
			wlandev->msdstate = WLAN_MSD_HWPRESENT_PENDING;
			/*
			 * TODO: Shut down the MAC completely. Here a chip
			 * or board level reset is probably called for.
			 * After a "disable" _all_ results are lost, even
			 * those from a fwload.
			 */
			if (!wlandev->hwremoved)
				FUNC5(wlandev->netdev);

			FUNC2(hw);

			wlandev->macmode = WLAN_MACMODE_NONE;
			wlandev->msdstate = WLAN_MSD_HWPRESENT;
			result = P80211ENUM_resultcode_success;
			break;
		case WLAN_MSD_HWFAIL:
		default:
			/* probe() had a problem or the msdstate contains
			 * an unrecognized value, there's nothing we can do.
			 */
			result = P80211ENUM_resultcode_implementation_failure;
			break;
		}
		break;
	default:
		result = P80211ENUM_resultcode_invalid_parameters;
		break;
	}

	return result;
}