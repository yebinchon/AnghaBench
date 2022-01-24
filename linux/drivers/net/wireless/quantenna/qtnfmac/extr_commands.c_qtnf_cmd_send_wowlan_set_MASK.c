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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {scalar_t__ data; } ;
struct qtnf_vif {int /*<<< orphan*/  vifid; TYPE_1__* mac; } ;
struct qtnf_bus {int dummy; } ;
struct qlink_cmd_wowlan_set {int /*<<< orphan*/  triggers; } ;
struct cfg80211_wowlan {int n_patterns; TYPE_2__* patterns; scalar_t__ magic_pkt; scalar_t__ disconnect; } ;
struct TYPE_4__ {int /*<<< orphan*/  pattern_len; int /*<<< orphan*/  pattern; } ;
struct TYPE_3__ {int /*<<< orphan*/  macid; struct qtnf_bus* bus; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  QLINK_CMD_WOWLAN_SET ; 
 int /*<<< orphan*/  QLINK_WOWLAN_TRIG_DISCONNECT ; 
 int /*<<< orphan*/  QLINK_WOWLAN_TRIG_MAGIC_PKT ; 
 int /*<<< orphan*/  QLINK_WOWLAN_TRIG_PATTERN_PKT ; 
 int /*<<< orphan*/  QTN_TLV_ID_WOWLAN_PATTERN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qtnf_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct qtnf_bus*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct qtnf_bus*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(const struct qtnf_vif *vif,
			     const struct cfg80211_wowlan *wowl)
{
	struct qtnf_bus *bus = vif->mac->bus;
	struct sk_buff *cmd_skb;
	struct qlink_cmd_wowlan_set *cmd;
	u32 triggers = 0;
	int count = 0;
	int ret = 0;

	cmd_skb = FUNC3(vif->mac->macid, vif->vifid,
					    QLINK_CMD_WOWLAN_SET, sizeof(*cmd));
	if (!cmd_skb)
		return -ENOMEM;

	FUNC1(bus);

	cmd = (struct qlink_cmd_wowlan_set *)cmd_skb->data;

	if (wowl) {
		if (wowl->disconnect)
			triggers |=  QLINK_WOWLAN_TRIG_DISCONNECT;

		if (wowl->magic_pkt)
			triggers |= QLINK_WOWLAN_TRIG_MAGIC_PKT;

		if (wowl->n_patterns && wowl->patterns) {
			triggers |= QLINK_WOWLAN_TRIG_PATTERN_PKT;
			while (count < wowl->n_patterns) {
				FUNC5(cmd_skb,
					QTN_TLV_ID_WOWLAN_PATTERN,
					wowl->patterns[count].pattern,
					wowl->patterns[count].pattern_len);
				count++;
			}
		}
	}

	cmd->triggers = FUNC0(triggers);

	ret = FUNC4(bus, cmd_skb);
	if (ret)
		goto out;

out:
	FUNC2(bus);
	return ret;
}