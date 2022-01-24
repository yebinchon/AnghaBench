#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct wireless_dev {TYPE_2__* netdev; } ;
struct wiphy {int dummy; } ;
struct qtnf_vif {int dummy; } ;
struct ieee80211_mgmt {int /*<<< orphan*/  da; int /*<<< orphan*/  frame_control; } ;
struct cfg80211_mgmt_tx_params {int /*<<< orphan*/  len; scalar_t__ buf; TYPE_1__* chan; scalar_t__ dont_wait_for_ack; scalar_t__ no_cck; scalar_t__ offchan; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {scalar_t__ center_freq; } ;

/* Variables and functions */
 scalar_t__ QLINK_FRAME_TX_FLAG_ACK_NOWAIT ; 
 scalar_t__ QLINK_FRAME_TX_FLAG_NO_CCK ; 
 scalar_t__ QLINK_FRAME_TX_FLAG_OFFCHAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct qtnf_vif*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 struct qtnf_vif* FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC5(struct wiphy *wiphy, struct wireless_dev *wdev,
	     struct cfg80211_mgmt_tx_params *params, u64 *cookie)
{
	struct qtnf_vif *vif = FUNC4(wdev->netdev);
	const struct ieee80211_mgmt *mgmt_frame = (void *)params->buf;
	u32 short_cookie = FUNC2();
	u16 flags = 0;
	u16 freq;

	*cookie = short_cookie;

	if (params->offchan)
		flags |= QLINK_FRAME_TX_FLAG_OFFCHAN;

	if (params->no_cck)
		flags |= QLINK_FRAME_TX_FLAG_NO_CCK;

	if (params->dont_wait_for_ack)
		flags |= QLINK_FRAME_TX_FLAG_ACK_NOWAIT;

	/* If channel is not specified, pass "freq = 0" to tell device
	 * firmware to use current channel.
	 */
	if (params->chan)
		freq = params->chan->center_freq;
	else
		freq = 0;

	FUNC1("%s freq:%u; FC:%.4X; DA:%pM; len:%zu; C:%.8X; FL:%.4X\n",
		 wdev->netdev->name, freq,
		 FUNC0(mgmt_frame->frame_control), mgmt_frame->da,
		 params->len, short_cookie, flags);

	return FUNC3(vif, short_cookie, flags,
				   freq, params->buf, params->len);
}