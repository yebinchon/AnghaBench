#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {scalar_t__ data; } ;
struct qtnf_wmac {int /*<<< orphan*/  bus; int /*<<< orphan*/  macid; } ;
struct qlink_resp_get_mac_info {int dummy; } ;
struct qlink_cmd {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  QLINK_CMD_MAC_INFO ; 
 int /*<<< orphan*/  QLINK_VIFID_RSVD ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qtnf_wmac*,struct qlink_resp_get_mac_info const*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct sk_buff*,struct sk_buff**,int,size_t*) ; 
 int FUNC6 (struct qtnf_wmac*,struct qlink_resp_get_mac_info const*,size_t) ; 

int FUNC7(struct qtnf_wmac *mac)
{
	struct sk_buff *cmd_skb, *resp_skb = NULL;
	const struct qlink_resp_get_mac_info *resp;
	size_t var_data_len = 0;
	int ret = 0;

	cmd_skb = FUNC3(mac->macid, QLINK_VIFID_RSVD,
					    QLINK_CMD_MAC_INFO,
					    sizeof(struct qlink_cmd));
	if (!cmd_skb)
		return -ENOMEM;

	FUNC1(mac->bus);
	ret = FUNC5(mac->bus, cmd_skb, &resp_skb,
				       sizeof(*resp), &var_data_len);
	if (ret)
		goto out;

	resp = (const struct qlink_resp_get_mac_info *)resp_skb->data;
	FUNC4(mac, resp);
	ret = FUNC6(mac, resp, var_data_len);

out:
	FUNC2(mac->bus);
	FUNC0(resp_skb);

	return ret;
}