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
struct sk_buff {scalar_t__ data; } ;
struct qtnf_vif {TYPE_1__* mac; int /*<<< orphan*/  vifid; } ;
struct qtnf_bus {int dummy; } ;
struct qlink_resp_channel_get {int /*<<< orphan*/  chan; } ;
struct qlink_cmd {int dummy; } ;
struct cfg80211_chan_def {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  macid; struct qtnf_bus* bus; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  QLINK_CMD_CHAN_GET ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct cfg80211_chan_def*) ; 
 int /*<<< orphan*/  FUNC3 (struct qtnf_bus*) ; 
 int /*<<< orphan*/  FUNC4 (struct qtnf_bus*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct qtnf_bus*,struct sk_buff*,struct sk_buff**,int,int /*<<< orphan*/ *) ; 

int FUNC7(struct qtnf_vif *vif, struct cfg80211_chan_def *chdef)
{
	struct qtnf_bus *bus = vif->mac->bus;
	const struct qlink_resp_channel_get *resp;
	struct sk_buff *cmd_skb;
	struct sk_buff *resp_skb = NULL;
	int ret;

	cmd_skb = FUNC5(vif->mac->macid, vif->vifid,
					    QLINK_CMD_CHAN_GET,
					    sizeof(struct qlink_cmd));
	if (!cmd_skb)
		return -ENOMEM;

	FUNC3(bus);
	ret = FUNC6(bus, cmd_skb, &resp_skb,
				       sizeof(*resp), NULL);
	if (ret)
		goto out;

	resp = (const struct qlink_resp_channel_get *)resp_skb->data;
	FUNC2(FUNC1(vif->mac), &resp->chan, chdef);

out:
	FUNC4(bus);
	FUNC0(resp_skb);

	return ret;
}