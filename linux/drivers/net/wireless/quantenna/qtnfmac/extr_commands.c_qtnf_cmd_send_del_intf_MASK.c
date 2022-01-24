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
struct sk_buff {scalar_t__ data; } ;
struct TYPE_4__ {int iftype; } ;
struct qtnf_vif {TYPE_3__* mac; TYPE_1__ wdev; int /*<<< orphan*/  vifid; } ;
struct TYPE_5__ {int /*<<< orphan*/  mac_addr; void* if_type; } ;
struct qlink_cmd_manage_intf {TYPE_2__ intf_info; } ;
struct TYPE_6__ {int /*<<< orphan*/  bus; int /*<<< orphan*/  macid; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
#define  NL80211_IFTYPE_AP 129 
#define  NL80211_IFTYPE_STATION 128 
 int /*<<< orphan*/  QLINK_CMD_DEL_INTF ; 
 int /*<<< orphan*/  QLINK_IFTYPE_AP ; 
 int /*<<< orphan*/  QLINK_IFTYPE_STATION ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct sk_buff*) ; 

int FUNC7(struct qtnf_vif *vif)
{
	struct sk_buff *cmd_skb;
	struct qlink_cmd_manage_intf *cmd;
	int ret = 0;

	cmd_skb = FUNC5(vif->mac->macid, vif->vifid,
					    QLINK_CMD_DEL_INTF,
					    sizeof(*cmd));
	if (!cmd_skb)
		return -ENOMEM;

	FUNC3(vif->mac->bus);

	cmd = (struct qlink_cmd_manage_intf *)cmd_skb->data;

	switch (vif->wdev.iftype) {
	case NL80211_IFTYPE_AP:
		cmd->intf_info.if_type = FUNC0(QLINK_IFTYPE_AP);
		break;
	case NL80211_IFTYPE_STATION:
		cmd->intf_info.if_type = FUNC0(QLINK_IFTYPE_STATION);
		break;
	default:
		FUNC2("VIF%u.%u: unsupported iftype %d\n", vif->mac->macid,
			vif->vifid, vif->wdev.iftype);
		ret = -EINVAL;
		goto out;
	}

	FUNC1(cmd->intf_info.mac_addr);

	ret = FUNC6(vif->mac->bus, cmd_skb);
	if (ret)
		goto out;

out:
	FUNC4(vif->mac->bus);
	return ret;
}