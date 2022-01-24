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
struct sk_buff {scalar_t__ data; } ;
struct qtnf_vif {TYPE_3__* mac; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  vifid; } ;
struct TYPE_5__ {int /*<<< orphan*/ * mac_addr; } ;
struct qlink_resp_manage_intf {TYPE_2__ intf_info; } ;
struct TYPE_4__ {int use4addr; int /*<<< orphan*/  mac_addr; void* if_type; } ;
struct qlink_cmd_manage_intf {TYPE_1__ intf_info; } ;
typedef  enum qlink_cmd_type { ____Placeholder_qlink_cmd_type } qlink_cmd_type ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_6__ {int /*<<< orphan*/  bus; int /*<<< orphan*/  macid; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
#define  NL80211_IFTYPE_AP 129 
#define  NL80211_IFTYPE_STATION 128 
 int /*<<< orphan*/  QLINK_IFTYPE_AP ; 
 int /*<<< orphan*/  QLINK_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct sk_buff*,struct sk_buff**,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct qtnf_vif *vif,
					 enum nl80211_iftype iftype,
					 int use4addr,
					 u8 *mac_addr,
					 enum qlink_cmd_type cmd_type)
{
	struct sk_buff *cmd_skb, *resp_skb = NULL;
	struct qlink_cmd_manage_intf *cmd;
	const struct qlink_resp_manage_intf *resp;
	int ret = 0;

	cmd_skb = FUNC7(vif->mac->macid, vif->vifid,
					    cmd_type,
					    sizeof(*cmd));
	if (!cmd_skb)
		return -ENOMEM;

	FUNC5(vif->mac->bus);

	cmd = (struct qlink_cmd_manage_intf *)cmd_skb->data;
	cmd->intf_info.use4addr = use4addr;

	switch (iftype) {
	case NL80211_IFTYPE_AP:
		cmd->intf_info.if_type = FUNC1(QLINK_IFTYPE_AP);
		break;
	case NL80211_IFTYPE_STATION:
		cmd->intf_info.if_type = FUNC1(QLINK_IFTYPE_STATION);
		break;
	default:
		FUNC4("VIF%u.%u: unsupported type %d\n", vif->mac->macid,
		       vif->vifid, iftype);
		ret = -EINVAL;
		goto out;
	}

	if (mac_addr)
		FUNC3(cmd->intf_info.mac_addr, mac_addr);
	else
		FUNC2(cmd->intf_info.mac_addr);

	ret = FUNC8(vif->mac->bus, cmd_skb, &resp_skb,
				       sizeof(*resp), NULL);
	if (ret)
		goto out;

	resp = (const struct qlink_resp_manage_intf *)resp_skb->data;
	FUNC3(vif->mac_addr, resp->intf_info.mac_addr);

out:
	FUNC6(vif->mac->bus);
	FUNC0(resp_skb);

	return ret;
}