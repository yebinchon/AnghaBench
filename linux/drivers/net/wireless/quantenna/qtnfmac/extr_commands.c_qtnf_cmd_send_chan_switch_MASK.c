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
struct sk_buff {scalar_t__ data; } ;
struct qtnf_wmac {int /*<<< orphan*/  bus; int /*<<< orphan*/  macid; } ;
struct qtnf_vif {int /*<<< orphan*/  vifid; struct qtnf_wmac* mac; } ;
struct qlink_cmd_chan_switch {int /*<<< orphan*/  beacon_count; int /*<<< orphan*/  block_tx; int /*<<< orphan*/  radar_required; int /*<<< orphan*/  channel; } ;
struct TYPE_4__ {TYPE_1__* chan; } ;
struct cfg80211_csa_settings {int /*<<< orphan*/  count; int /*<<< orphan*/  block_tx; int /*<<< orphan*/  radar_required; TYPE_2__ chandef; } ;
struct TYPE_3__ {int /*<<< orphan*/  hw_value; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  QLINK_CMD_CHAN_SWITCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct sk_buff*) ; 

int FUNC5(struct qtnf_vif *vif,
			      struct cfg80211_csa_settings *params)
{
	struct qtnf_wmac *mac = vif->mac;
	struct qlink_cmd_chan_switch *cmd;
	struct sk_buff *cmd_skb;
	int ret;

	cmd_skb = FUNC3(mac->macid, vif->vifid,
					    QLINK_CMD_CHAN_SWITCH,
					    sizeof(*cmd));
	if (!cmd_skb)
		return -ENOMEM;

	FUNC1(mac->bus);

	cmd = (struct qlink_cmd_chan_switch *)cmd_skb->data;
	cmd->channel = FUNC0(params->chandef.chan->hw_value);
	cmd->radar_required = params->radar_required;
	cmd->block_tx = params->block_tx;
	cmd->beacon_count = params->count;

	ret = FUNC4(mac->bus, cmd_skb);
	if (ret)
		goto out;

out:
	FUNC2(mac->bus);

	return ret;
}