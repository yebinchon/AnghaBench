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
typedef  int /*<<< orphan*/  u8 ;
struct wsm_tx {int /*<<< orphan*/  flags; } ;
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct ieee80211_tx_control {TYPE_1__* sta; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {struct cw1200_common* priv; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct TYPE_5__ {int /*<<< orphan*/  tid; int /*<<< orphan*/  raw_link_id; int /*<<< orphan*/  link_id; int /*<<< orphan*/  rate_id; } ;
struct cw1200_txinfo {int queue; TYPE_2__ txpriv; struct sk_buff* skb; TYPE_1__* sta; struct cw1200_sta_priv* sta_priv; struct ieee80211_hdr* hdr; int /*<<< orphan*/  da; int /*<<< orphan*/  hdrlen; int /*<<< orphan*/  tx_info; } ;
struct cw1200_sta_priv {int dummy; } ;
struct cw1200_common {int /*<<< orphan*/  ps_state_lock; int /*<<< orphan*/ * tx_queue; scalar_t__ bh_error; } ;
struct TYPE_4__ {int /*<<< orphan*/  drv_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CW1200_INVALID_RATE_ID ; 
 int /*<<< orphan*/  CW1200_MAX_TID ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct cw1200_common*,struct sk_buff*,TYPE_2__*) ; 
 int FUNC6 (struct cw1200_common*,struct cw1200_txinfo*) ; 
 int FUNC7 (struct cw1200_common*,struct cw1200_txinfo*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct cw1200_common*,struct cw1200_txinfo*,struct wsm_tx*) ; 
 int FUNC9 (struct cw1200_common*,struct cw1200_txinfo*) ; 
 int /*<<< orphan*/  FUNC10 (struct cw1200_common*,struct cw1200_txinfo*) ; 
 int FUNC11 (struct cw1200_common*,struct cw1200_txinfo*) ; 
 int /*<<< orphan*/  FUNC12 (struct cw1200_common*,struct cw1200_txinfo*) ; 
 int FUNC13 (struct cw1200_common*,struct cw1200_txinfo*) ; 
 int FUNC14 (struct cw1200_common*,struct cw1200_txinfo*,struct wsm_tx*) ; 
 struct wsm_tx* FUNC15 (struct cw1200_common*,struct cw1200_txinfo*) ; 
 int /*<<< orphan*/  FUNC16 (struct ieee80211_hdr*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct ieee80211_sta*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ieee80211_sta* FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int FUNC23 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

void FUNC26(struct ieee80211_hw *dev,
	       struct ieee80211_tx_control *control,
	       struct sk_buff *skb)
{
	struct cw1200_common *priv = dev->priv;
	struct cw1200_txinfo t = {
		.skb = skb,
		.queue = FUNC23(skb),
		.tx_info = FUNC1(skb),
		.hdr = (struct ieee80211_hdr *)skb->data,
		.txpriv.tid = CW1200_MAX_TID,
		.txpriv.rate_id = CW1200_INVALID_RATE_ID,
	};
	struct ieee80211_sta *sta;
	struct wsm_tx *wsm;
	bool tid_update = 0;
	u8 flags = 0;
	int ret;

	if (priv->bh_error)
		goto drop;

	t.hdrlen = FUNC17(t.hdr->frame_control);
	t.da = FUNC16(t.hdr);
	if (control) {
		t.sta = control->sta;
		t.sta_priv = (struct cw1200_sta_priv *)&t.sta->drv_priv;
	}

	if (FUNC2(t.queue >= 4))
		goto drop;

	ret = FUNC9(priv, &t);
	if (ret)
		goto drop;

	FUNC19("[TX] TX %d bytes (queue: %d, link_id: %d (%d)).\n",
		 skb->len, t.queue, t.txpriv.link_id,
		 t.txpriv.raw_link_id);

	FUNC12(priv, &t);
	FUNC10(priv, &t);
	ret = FUNC11(priv, &t);
	if (ret)
		goto drop;
	ret = FUNC7(priv, &t, &flags);
	if (ret)
		goto drop;
	ret = FUNC6(priv, &t);
	if (ret)
		goto drop;
	wsm = FUNC15(priv, &t);
	if (!wsm) {
		ret = -ENOMEM;
		goto drop;
	}
	wsm->flags |= flags;
	FUNC8(priv, &t, wsm);
	ret = FUNC14(priv, &t, wsm);
	if (ret)
		goto drop;

	FUNC21();
	sta = FUNC20(t.sta);

	FUNC24(&priv->ps_state_lock);
	{
		tid_update = FUNC13(priv, &t);
		FUNC0(FUNC4(&priv->tx_queue[t.queue],
					t.skb, &t.txpriv));
	}
	FUNC25(&priv->ps_state_lock);

	if (tid_update && sta)
		FUNC18(sta, t.txpriv.tid, true);

	FUNC22();

	FUNC3(priv);

	return;

drop:
	FUNC5(priv, skb, &t.txpriv);
	return;
}