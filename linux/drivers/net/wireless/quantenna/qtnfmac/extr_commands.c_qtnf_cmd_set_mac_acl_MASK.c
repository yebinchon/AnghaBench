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
struct sk_buff {int dummy; } ;
struct qtnf_vif {int /*<<< orphan*/  vifid; TYPE_1__* mac; } ;
struct qtnf_bus {int dummy; } ;
struct qlink_tlv_hdr {scalar_t__ val; void* len; void* type; } ;
struct qlink_cmd {int dummy; } ;
struct qlink_acl_data {int dummy; } ;
struct cfg80211_acl_data {int /*<<< orphan*/  n_acl_entries; } ;
struct TYPE_2__ {int /*<<< orphan*/  macid; struct qtnf_bus* bus; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  QLINK_CMD_SET_MAC_ACL ; 
 size_t QTN_TLV_ID_ACL_DATA ; 
 void* FUNC0 (size_t) ; 
 int /*<<< orphan*/  mac_addrs ; 
 int /*<<< orphan*/  FUNC1 (struct cfg80211_acl_data const*,struct qlink_acl_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct qtnf_bus*) ; 
 int /*<<< orphan*/  FUNC3 (struct qtnf_bus*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct qtnf_bus*,struct sk_buff*) ; 
 struct qlink_tlv_hdr* FUNC6 (struct sk_buff*,int) ; 
 size_t FUNC7 (struct cfg80211_acl_data const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(const struct qtnf_vif *vif,
			 const struct cfg80211_acl_data *params)
{
	struct qtnf_bus *bus = vif->mac->bus;
	struct sk_buff *cmd_skb;
	struct qlink_tlv_hdr *tlv;
	size_t acl_size = FUNC7(params, mac_addrs, params->n_acl_entries);
	int ret;

	cmd_skb = FUNC4(vif->mac->macid, vif->vifid,
					    QLINK_CMD_SET_MAC_ACL,
					    sizeof(struct qlink_cmd));
	if (!cmd_skb)
		return -ENOMEM;

	tlv = FUNC6(cmd_skb, sizeof(*tlv) + acl_size);
	tlv->type = FUNC0(QTN_TLV_ID_ACL_DATA);
	tlv->len = FUNC0(acl_size);
	FUNC1(params, (struct qlink_acl_data *)tlv->val);

	FUNC2(bus);
	ret = FUNC5(bus, cmd_skb);
	if (ret)
		goto out;

out:
	FUNC3(bus);

	return ret;
}