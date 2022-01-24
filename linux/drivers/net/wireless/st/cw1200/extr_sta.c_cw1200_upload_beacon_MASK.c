#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct wsm_template_frame {TYPE_1__* skb; int /*<<< orphan*/  frame_type; int /*<<< orphan*/  rate; } ;
struct ieee80211_mgmt {int /*<<< orphan*/  frame_control; } ;
struct cw1200_common {scalar_t__ mode; TYPE_2__* vif; int /*<<< orphan*/  hw; } ;
struct TYPE_5__ {scalar_t__ p2p; } ;
struct TYPE_4__ {scalar_t__ data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int IEEE80211_FTYPE_MGMT ; 
 int IEEE80211_STYPE_PROBE_RESP ; 
 scalar_t__ NL80211_IFTYPE_MONITOR ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 scalar_t__ NL80211_IFTYPE_UNSPECIFIED ; 
 int /*<<< orphan*/  WSM_FRAME_TYPE_BEACON ; 
 int /*<<< orphan*/  WSM_FRAME_TYPE_PROBE_RESPONSE ; 
 int /*<<< orphan*/  WSM_TRANSMIT_RATE_6 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct cw1200_common*,int) ; 
 int FUNC4 (struct cw1200_common*,struct wsm_template_frame*) ; 

__attribute__((used)) static int FUNC5(struct cw1200_common *priv)
{
	int ret = 0;
	struct ieee80211_mgmt *mgmt;
	struct wsm_template_frame frame = {
		.frame_type = WSM_FRAME_TYPE_BEACON,
	};

	u16 tim_offset;
	u16 tim_len;

	if (priv->mode == NL80211_IFTYPE_STATION ||
	    priv->mode == NL80211_IFTYPE_MONITOR ||
	    priv->mode == NL80211_IFTYPE_UNSPECIFIED)
		goto done;

	if (priv->vif->p2p)
		frame.rate = WSM_TRANSMIT_RATE_6;

	frame.skb = FUNC2(priv->hw, priv->vif,
					     &tim_offset, &tim_len);
	if (!frame.skb)
		return -ENOMEM;

	ret = FUNC4(priv, &frame);

	if (ret)
		goto done;

	/* TODO: Distill probe resp; remove TIM
	 * and any other beacon-specific IEs
	 */
	mgmt = (void *)frame.skb->data;
	mgmt->frame_control =
		FUNC0(IEEE80211_FTYPE_MGMT |
			      IEEE80211_STYPE_PROBE_RESP);

	frame.frame_type = WSM_FRAME_TYPE_PROBE_RESPONSE;
	if (priv->vif->p2p) {
		ret = FUNC3(priv, true);
	} else {
		ret = FUNC4(priv, &frame);
		FUNC3(priv, false);
	}

done:
	FUNC1(frame.skb);

	return ret;
}