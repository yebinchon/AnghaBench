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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct wlandevice {int /*<<< orphan*/  ssid; int /*<<< orphan*/  macmode; struct hfa384x* priv; } ;
struct p80211pstrd {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  data; int /*<<< orphan*/  status; } ;
struct TYPE_5__ {int /*<<< orphan*/  data; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct p80211msg_lnxreq_autojoin {TYPE_3__ resultcode; TYPE_2__ ssid; TYPE_1__ authtype; } ;
struct hfa384x_bytestr {int dummy; } ;
struct hfa384x {int dummy; } ;

/* Variables and functions */
 int HFA384x_CNFAUTHENTICATION_OPENSYSTEM ; 
 int HFA384x_CNFAUTHENTICATION_SHAREDKEY ; 
 int HFA384x_PORTTYPE_BSS ; 
 int /*<<< orphan*/  HFA384x_RID_CNFAUTHENTICATION ; 
 int /*<<< orphan*/  HFA384x_RID_CNFDESIREDSSID ; 
 int /*<<< orphan*/  HFA384x_RID_CNFDESIREDSSID_LEN ; 
 int /*<<< orphan*/  HFA384x_RID_CNFPORTTYPE ; 
 int /*<<< orphan*/  HFA384x_RID_TXRATECNTL ; 
 scalar_t__ P80211ENUM_authalg_sharedkey ; 
 int /*<<< orphan*/  P80211ENUM_msgitem_status_data_ok ; 
 int /*<<< orphan*/  P80211ENUM_resultcode_success ; 
 int /*<<< orphan*/  WLAN_MACMODE_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct hfa384x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hfa384x*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hfa384x*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hfa384x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hfa384x_bytestr*,struct p80211pstrd*) ; 

int FUNC7(struct wlandevice *wlandev, void *msgp)
{
	struct hfa384x *hw = wlandev->priv;
	int result = 0;
	u16 reg;
	u16 port_type;
	struct p80211msg_lnxreq_autojoin *msg = msgp;
	struct p80211pstrd *pstr;
	u8 bytebuf[256];
	struct hfa384x_bytestr *p2bytestr = (struct hfa384x_bytestr *)bytebuf;

	wlandev->macmode = WLAN_MACMODE_NONE;

	/* Set the SSID */
	FUNC4(&wlandev->ssid, &msg->ssid.data, sizeof(msg->ssid.data));

	/* Disable the Port */
	FUNC0(hw, 0);

	/*** STATION ***/
	/* Set the TxRates */
	FUNC3(hw, HFA384x_RID_TXRATECNTL, 0x000f);

	/* Set the auth type */
	if (msg->authtype.data == P80211ENUM_authalg_sharedkey)
		reg = HFA384x_CNFAUTHENTICATION_SHAREDKEY;
	else
		reg = HFA384x_CNFAUTHENTICATION_OPENSYSTEM;

	FUNC3(hw, HFA384x_RID_CNFAUTHENTICATION, reg);

	/* Set the ssid */
	FUNC5(bytebuf, 0, 256);
	pstr = (struct p80211pstrd *)&msg->ssid.data;
	FUNC6(p2bytestr, pstr);
	result = FUNC2(hw, HFA384x_RID_CNFDESIREDSSID,
					bytebuf,
					HFA384x_RID_CNFDESIREDSSID_LEN);
	port_type = HFA384x_PORTTYPE_BSS;
	/* Set the PortType */
	FUNC3(hw, HFA384x_RID_CNFPORTTYPE, port_type);

	/* Enable the Port */
	FUNC1(hw, 0);

	/* Set the resultcode */
	msg->resultcode.status = P80211ENUM_msgitem_status_data_ok;
	msg->resultcode.data = P80211ENUM_resultcode_success;

	return result;
}