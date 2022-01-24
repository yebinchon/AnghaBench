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
typedef  int /*<<< orphan*/  u8 ;
struct station_info {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct qtnf_vif {TYPE_1__* mac; int /*<<< orphan*/  vifid; } ;
struct qlink_tlv_hdr {int dummy; } ;
struct qlink_resp_get_sta_info {scalar_t__ info; int /*<<< orphan*/  sta_addr; } ;
struct qlink_cmd_get_sta_info {int /*<<< orphan*/  sta_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus; int /*<<< orphan*/  macid; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  QLINK_CMD_GET_STA_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct sk_buff*,struct sk_buff**,int,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (struct station_info*,struct qlink_tlv_hdr const*,size_t) ; 

int FUNC9(struct qtnf_vif *vif, const u8 *sta_mac,
			  struct station_info *sinfo)
{
	struct sk_buff *cmd_skb, *resp_skb = NULL;
	struct qlink_cmd_get_sta_info *cmd;
	const struct qlink_resp_get_sta_info *resp;
	size_t var_resp_len = 0;
	int ret = 0;

	cmd_skb = FUNC6(vif->mac->macid, vif->vifid,
					    QLINK_CMD_GET_STA_INFO,
					    sizeof(*cmd));
	if (!cmd_skb)
		return -ENOMEM;

	FUNC4(vif->mac->bus);

	cmd = (struct qlink_cmd_get_sta_info *)cmd_skb->data;
	FUNC1(cmd->sta_addr, sta_mac);

	ret = FUNC7(vif->mac->bus, cmd_skb, &resp_skb,
				       sizeof(*resp), &var_resp_len);
	if (ret)
		goto out;

	resp = (const struct qlink_resp_get_sta_info *)resp_skb->data;

	if (!FUNC2(sta_mac, resp->sta_addr)) {
		FUNC3("VIF%u.%u: wrong mac in reply: %pM != %pM\n",
		       vif->mac->macid, vif->vifid, resp->sta_addr, sta_mac);
		ret = -EINVAL;
		goto out;
	}

	FUNC8(sinfo,
				(const struct qlink_tlv_hdr *)resp->info,
				var_resp_len);

out:
	FUNC5(vif->mac->bus);
	FUNC0(resp_skb);

	return ret;
}