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
struct TYPE_5__ {int /*<<< orphan*/  status; scalar_t__ silence; scalar_t__ signal; int /*<<< orphan*/  rate; int /*<<< orphan*/  time; int /*<<< orphan*/  frame_control; int /*<<< orphan*/  data_len; } ;
struct TYPE_6__ {TYPE_2__ desc; } ;
union hfa384x_usbin {TYPE_3__ rxfrm; } ;
typedef  int /*<<< orphan*/  u16 ;
struct wlandevice {int hostwep; int /*<<< orphan*/  netdev; struct hfa384x* priv; } ;
struct sk_buff {int /*<<< orphan*/  dev; scalar_t__ data; } ;
struct p80211_rxmeta {scalar_t__ noise; scalar_t__ signal; int /*<<< orphan*/  rxrate; int /*<<< orphan*/  mactime; } ;
struct hfa384x_rx_frame {int dummy; } ;
struct hfa384x {TYPE_1__* wlandev; scalar_t__ dbmadjust; } ;
struct TYPE_4__ {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int HOSTWEP_EXCLUDEUNENCRYPTED ; 
 int /*<<< orphan*/  WLAN_CRC_LEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct wlandevice*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct wlandevice*,struct sk_buff*) ; 
 struct p80211_rxmeta* FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct wlandevice*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC21(struct wlandevice *wlandev, struct sk_buff *skb)
{
	union hfa384x_usbin *usbin = (union hfa384x_usbin *)skb->data;
	struct hfa384x *hw = wlandev->priv;
	int hdrlen;
	struct p80211_rxmeta *rxmeta;
	u16 data_len;
	u16 fc;

	/* Byte order convert once up front. */
	FUNC6(&usbin->rxfrm.desc.status);
	FUNC7(&usbin->rxfrm.desc.time);

	/* Now handle frame based on port# */
	switch (FUNC1(usbin->rxfrm.desc.status)) {
	case 0:
		fc = FUNC5(usbin->rxfrm.desc.frame_control);

		/* If exclude and we receive an unencrypted, drop it */
		if ((wlandev->hostwep & HOSTWEP_EXCLUDEUNENCRYPTED) &&
		    !FUNC2(fc)) {
			break;
		}

		data_len = FUNC5(usbin->rxfrm.desc.data_len);

		/* How much header data do we have? */
		hdrlen = FUNC11(fc);

		/* Pull off the descriptor */
		FUNC16(skb, sizeof(struct hfa384x_rx_frame));

		/* Now shunt the header block up against the data block
		 * with an "overlapping" copy
		 */
		FUNC8(FUNC17(skb, hdrlen),
			&usbin->rxfrm.desc.frame_control, hdrlen);

		skb->dev = wlandev->netdev;

		/* And set the frame length properly */
		FUNC20(skb, data_len + hdrlen);

		/* The prism2 series does not return the CRC */
		FUNC9(FUNC18(skb, WLAN_CRC_LEN), 0xff, WLAN_CRC_LEN);

		FUNC19(skb);

		/* Attach the rxmeta, set some stuff */
		FUNC14(wlandev, skb);
		rxmeta = FUNC13(skb);
		rxmeta->mactime = usbin->rxfrm.desc.time;
		rxmeta->rxrate = usbin->rxfrm.desc.rate;
		rxmeta->signal = usbin->rxfrm.desc.signal - hw->dbmadjust;
		rxmeta->noise = usbin->rxfrm.desc.silence - hw->dbmadjust;

		FUNC12(wlandev, skb);

		break;

	case 7:
		if (!FUNC0(usbin->rxfrm.desc.status)) {
			/* Copy to wlansnif skb */
			FUNC4(wlandev, &usbin->rxfrm);
			FUNC3(skb);
		} else {
			FUNC15("Received monitor frame: FCSerr set\n");
		}
		break;

	default:
		FUNC10(hw->wlandev->netdev, "Received frame on unsupported port=%d\n",
			    FUNC1(usbin->rxfrm.desc.status));
		break;
	}
}