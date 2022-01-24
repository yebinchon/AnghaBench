#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct wlandevice {int /*<<< orphan*/  netdev; struct hfa384x* priv; } ;
struct TYPE_9__ {int data; void* status; } ;
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
struct p80211msg_lnxreq_ifstate {TYPE_2__ resultcode; TYPE_1__ ifstate; } ;
struct TYPE_14__ {int /*<<< orphan*/  data; } ;
struct TYPE_12__ {void* data; void* status; } ;
struct TYPE_11__ {void* data; void* status; } ;
struct TYPE_10__ {void* data; void* status; } ;
struct p80211msg_lnxreq_commsquality {TYPE_7__ txrate; TYPE_5__ noise; TYPE_4__ level; TYPE_3__ link; } ;
struct p80211msg {int msgcode; } ;
struct TYPE_13__ {int /*<<< orphan*/  anl_curr_fc; int /*<<< orphan*/  asl_curr_bss; int /*<<< orphan*/  cq_curr_bss; } ;
struct hfa384x {int /*<<< orphan*/  txrate; TYPE_6__ qual; } ;

/* Variables and functions */
#define  DIDMSG_DOT11REQ_MIBGET 142 
#define  DIDMSG_DOT11REQ_MIBSET 141 
#define  DIDMSG_DOT11REQ_SCAN 140 
#define  DIDMSG_DOT11REQ_SCAN_RESULTS 139 
#define  DIDMSG_DOT11REQ_START 138 
#define  DIDMSG_LNXREQ_AUTOJOIN 137 
#define  DIDMSG_LNXREQ_COMMSQUALITY 136 
#define  DIDMSG_LNXREQ_HOSTWEP 135 
#define  DIDMSG_LNXREQ_IFSTATE 134 
#define  DIDMSG_LNXREQ_WLANSNIFF 133 
#define  DIDMSG_P2REQ_FLASHDL_STATE 132 
#define  DIDMSG_P2REQ_FLASHDL_WRITE 131 
#define  DIDMSG_P2REQ_RAMDL_STATE 130 
#define  DIDMSG_P2REQ_RAMDL_WRITE 129 
#define  DIDMSG_P2REQ_READPDA 128 
 void* P80211ENUM_msgitem_status_data_ok ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct wlandevice*,struct p80211msg*) ; 
 int FUNC4 (struct wlandevice*,struct p80211msg*) ; 
 int FUNC5 (struct wlandevice*,struct p80211msg*) ; 
 int FUNC6 (struct wlandevice*,struct p80211msg*) ; 
 int FUNC7 (struct wlandevice*,struct p80211msg*) ; 
 int FUNC8 (struct wlandevice*,struct p80211msg*) ; 
 int FUNC9 (struct wlandevice*,struct p80211msg*) ; 
 int FUNC10 (struct wlandevice*,struct p80211msg*) ; 
 int FUNC11 (struct wlandevice*,struct p80211msg*) ; 
 int FUNC12 (struct wlandevice*,struct p80211msg*) ; 
 int FUNC13 (struct wlandevice*,struct p80211msg*) ; 
 int FUNC14 (struct wlandevice*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct wlandevice *wlandev,
				 struct p80211msg *msg)
{
	struct hfa384x *hw = wlandev->priv;

	int result = 0;

	switch (msg->msgcode) {
	case DIDMSG_DOT11REQ_MIBGET:
		FUNC2("Received mibget request\n");
		result = FUNC6(wlandev, msg);
		break;
	case DIDMSG_DOT11REQ_MIBSET:
		FUNC2("Received mibset request\n");
		result = FUNC6(wlandev, msg);
		break;
	case DIDMSG_DOT11REQ_SCAN:
		FUNC2("Received scan request\n");
		result = FUNC10(wlandev, msg);
		break;
	case DIDMSG_DOT11REQ_SCAN_RESULTS:
		FUNC2("Received scan_results request\n");
		result = FUNC11(wlandev, msg);
		break;
	case DIDMSG_DOT11REQ_START:
		FUNC2("Received mlme start request\n");
		result = FUNC12(wlandev, msg);
		break;
		/*
		 * Prism2 specific messages
		 */
	case DIDMSG_P2REQ_READPDA:
		FUNC2("Received mlme readpda request\n");
		result = FUNC9(wlandev, msg);
		break;
	case DIDMSG_P2REQ_RAMDL_STATE:
		FUNC2("Received mlme ramdl_state request\n");
		result = FUNC7(wlandev, msg);
		break;
	case DIDMSG_P2REQ_RAMDL_WRITE:
		FUNC2("Received mlme ramdl_write request\n");
		result = FUNC8(wlandev, msg);
		break;
	case DIDMSG_P2REQ_FLASHDL_STATE:
		FUNC2("Received mlme flashdl_state request\n");
		result = FUNC4(wlandev, msg);
		break;
	case DIDMSG_P2REQ_FLASHDL_WRITE:
		FUNC2("Received mlme flashdl_write request\n");
		result = FUNC5(wlandev, msg);
		break;
		/*
		 * Linux specific messages
		 */
	case DIDMSG_LNXREQ_HOSTWEP:
		break;		/* ignore me. */
	case DIDMSG_LNXREQ_IFSTATE: {
		struct p80211msg_lnxreq_ifstate *ifstatemsg;

		FUNC2("Received mlme ifstate request\n");
		ifstatemsg = (struct p80211msg_lnxreq_ifstate *)msg;
		result = FUNC14(wlandev,
					   ifstatemsg->ifstate.data);
		ifstatemsg->resultcode.status =
			P80211ENUM_msgitem_status_data_ok;
		ifstatemsg->resultcode.data = result;
		result = 0;
		break;
	}
	case DIDMSG_LNXREQ_WLANSNIFF:
		FUNC2("Received mlme wlansniff request\n");
		result = FUNC13(wlandev, msg);
		break;
	case DIDMSG_LNXREQ_AUTOJOIN:
		FUNC2("Received mlme autojoin request\n");
		result = FUNC3(wlandev, msg);
		break;
	case DIDMSG_LNXREQ_COMMSQUALITY: {
		struct p80211msg_lnxreq_commsquality *qualmsg;

		FUNC2("Received commsquality request\n");

		qualmsg = (struct p80211msg_lnxreq_commsquality *)msg;

		qualmsg->link.status = P80211ENUM_msgitem_status_data_ok;
		qualmsg->level.status = P80211ENUM_msgitem_status_data_ok;
		qualmsg->noise.status = P80211ENUM_msgitem_status_data_ok;

		qualmsg->link.data = FUNC0(hw->qual.cq_curr_bss);
		qualmsg->level.data = FUNC0(hw->qual.asl_curr_bss);
		qualmsg->noise.data = FUNC0(hw->qual.anl_curr_fc);
		qualmsg->txrate.data = hw->txrate;

		break;
	}
	default:
		FUNC1(wlandev->netdev,
			    "Unknown mgmt request message 0x%08x",
			    msg->msgcode);
		break;
	}

	return result;
}