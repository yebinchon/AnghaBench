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
struct wlandevice {int /*<<< orphan*/  netdev; } ;
struct hfa384x_inf_frame {int infotype; } ;

/* Variables and functions */
#define  HFA384x_IT_ASSOCREQ 139 
#define  HFA384x_IT_ASSOCSTATUS 138 
#define  HFA384x_IT_AUTHREQ 137 
#define  HFA384x_IT_CHINFORESULTS 136 
#define  HFA384x_IT_COMMTALLIES 135 
#define  HFA384x_IT_HANDOVERADDR 134 
#define  HFA384x_IT_HOSTSCANRESULTS 133 
#define  HFA384x_IT_KEYIDCHANGED 132 
#define  HFA384x_IT_LINKSTATUS 131 
#define  HFA384x_IT_MICFAILURE 130 
#define  HFA384x_IT_PSUSERCNT 129 
#define  HFA384x_IT_SCANRESULTS 128 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct wlandevice*,struct hfa384x_inf_frame*) ; 
 int /*<<< orphan*/  FUNC3 (struct wlandevice*,struct hfa384x_inf_frame*) ; 
 int /*<<< orphan*/  FUNC4 (struct wlandevice*,struct hfa384x_inf_frame*) ; 
 int /*<<< orphan*/  FUNC5 (struct wlandevice*,struct hfa384x_inf_frame*) ; 
 int /*<<< orphan*/  FUNC6 (struct wlandevice*,struct hfa384x_inf_frame*) ; 
 int /*<<< orphan*/  FUNC7 (struct wlandevice*,struct hfa384x_inf_frame*) ; 
 int /*<<< orphan*/  FUNC8 (struct wlandevice*,struct hfa384x_inf_frame*) ; 
 int /*<<< orphan*/  FUNC9 (struct wlandevice*,struct hfa384x_inf_frame*) ; 
 int /*<<< orphan*/  FUNC10 (struct wlandevice*,struct hfa384x_inf_frame*) ; 

void FUNC11(struct wlandevice *wlandev,
		       struct hfa384x_inf_frame *inf)
{
	FUNC0(&inf->infotype);
	/* Dispatch */
	switch (inf->infotype) {
	case HFA384x_IT_HANDOVERADDR:
		FUNC5(wlandev, inf);
		break;
	case HFA384x_IT_COMMTALLIES:
		FUNC10(wlandev, inf);
		break;
	case HFA384x_IT_HOSTSCANRESULTS:
		FUNC6(wlandev, inf);
		break;
	case HFA384x_IT_SCANRESULTS:
		FUNC9(wlandev, inf);
		break;
	case HFA384x_IT_CHINFORESULTS:
		FUNC4(wlandev, inf);
		break;
	case HFA384x_IT_LINKSTATUS:
		FUNC7(wlandev, inf);
		break;
	case HFA384x_IT_ASSOCSTATUS:
		FUNC2(wlandev, inf);
		break;
	case HFA384x_IT_AUTHREQ:
		FUNC3(wlandev, inf);
		break;
	case HFA384x_IT_PSUSERCNT:
		FUNC8(wlandev, inf);
		break;
	case HFA384x_IT_KEYIDCHANGED:
		FUNC1(wlandev->netdev, "Unhandled IT_KEYIDCHANGED\n");
		break;
	case HFA384x_IT_ASSOCREQ:
		FUNC1(wlandev->netdev, "Unhandled IT_ASSOCREQ\n");
		break;
	case HFA384x_IT_MICFAILURE:
		FUNC1(wlandev->netdev, "Unhandled IT_MICFAILURE\n");
		break;
	default:
		FUNC1(wlandev->netdev,
			    "Unknown info type=0x%02x\n", inf->infotype);
		break;
	}
}