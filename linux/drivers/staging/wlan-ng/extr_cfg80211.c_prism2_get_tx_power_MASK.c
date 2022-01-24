#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wlandevice {int dummy; } ;
struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;
struct prism2_wiphy_private {struct wlandevice* wlandev; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct p80211msg_dot11req_mibget {int /*<<< orphan*/  msgcode; TYPE_1__ mibattribute; } ;
struct p80211item_uint32 {int data; int /*<<< orphan*/  did; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIDMIB_DOT11PHY_TXPOWERTABLE_CURRENTTXPOWERLEVEL ; 
 int /*<<< orphan*/  DIDMSG_DOT11REQ_MIBGET ; 
 int EFAULT ; 
 int FUNC0 (struct wlandevice*,int /*<<< orphan*/ *) ; 
 struct prism2_wiphy_private* FUNC1 (struct wiphy*) ; 

__attribute__((used)) static int FUNC2(struct wiphy *wiphy, struct wireless_dev *wdev,
			       int *dbm)
{
	struct prism2_wiphy_private *priv = FUNC1(wiphy);
	struct wlandevice *wlandev = priv->wlandev;
	struct p80211msg_dot11req_mibget msg;
	struct p80211item_uint32 *mibitem;
	int result;
	int err = 0;

	mibitem = (struct p80211item_uint32 *)&msg.mibattribute.data;
	msg.msgcode = DIDMSG_DOT11REQ_MIBGET;
	mibitem->did = DIDMIB_DOT11PHY_TXPOWERTABLE_CURRENTTXPOWERLEVEL;

	result = FUNC0(wlandev, (u8 *)&msg);

	if (result) {
		err = -EFAULT;
		goto exit;
	}

	*dbm = mibitem->data;

exit:
	return err;
}