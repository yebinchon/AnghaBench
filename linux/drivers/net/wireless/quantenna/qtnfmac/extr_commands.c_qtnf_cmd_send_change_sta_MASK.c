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
struct station_parameters {int /*<<< orphan*/  sta_flags_set; int /*<<< orphan*/  sta_flags_mask; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_5__ {int iftype; } ;
struct qtnf_vif {TYPE_3__* mac; TYPE_2__ wdev; int /*<<< orphan*/  vifid; } ;
struct TYPE_4__ {void* value; void* mask; } ;
struct qlink_cmd_change_sta {void* if_type; TYPE_1__ flag_update; int /*<<< orphan*/  sta_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  bus; int /*<<< orphan*/  macid; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
#define  NL80211_IFTYPE_AP 129 
#define  NL80211_IFTYPE_STATION 128 
 int /*<<< orphan*/  QLINK_CMD_CHANGE_STA ; 
 int /*<<< orphan*/  QLINK_IFTYPE_AP ; 
 int /*<<< orphan*/  QLINK_IFTYPE_STATION ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct qtnf_vif *vif, const u8 *mac,
			     struct station_parameters *params)
{
	struct sk_buff *cmd_skb;
	struct qlink_cmd_change_sta *cmd;
	int ret = 0;

	cmd_skb = FUNC6(vif->mac->macid, vif->vifid,
					    QLINK_CMD_CHANGE_STA,
					    sizeof(*cmd));
	if (!cmd_skb)
		return -ENOMEM;

	FUNC4(vif->mac->bus);

	cmd = (struct qlink_cmd_change_sta *)cmd_skb->data;
	FUNC2(cmd->sta_addr, mac);
	cmd->flag_update.mask =
		FUNC1(FUNC8(params->sta_flags_mask));
	cmd->flag_update.value =
		FUNC1(FUNC8(params->sta_flags_set));

	switch (vif->wdev.iftype) {
	case NL80211_IFTYPE_AP:
		cmd->if_type = FUNC0(QLINK_IFTYPE_AP);
		break;
	case NL80211_IFTYPE_STATION:
		cmd->if_type = FUNC0(QLINK_IFTYPE_STATION);
		break;
	default:
		FUNC3("unsupported iftype %d\n", vif->wdev.iftype);
		ret = -EINVAL;
		goto out;
	}

	ret = FUNC7(vif->mac->bus, cmd_skb);
	if (ret)
		goto out;

out:
	FUNC5(vif->mac->bus);

	return ret;
}