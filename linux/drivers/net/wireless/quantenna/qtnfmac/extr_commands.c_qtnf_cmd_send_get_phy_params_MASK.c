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
struct qlink_resp_phy_params {int /*<<< orphan*/  info; } ;
struct qlink_cmd {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  QLINK_CMD_PHY_PARAMS_GET ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct qtnf_wmac*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct sk_buff*,struct sk_buff**,int,size_t*) ; 

int FUNC6(struct qtnf_wmac *mac)
{
	struct sk_buff *cmd_skb, *resp_skb = NULL;
	struct qlink_resp_phy_params *resp;
	size_t response_size = 0;
	int ret = 0;

	cmd_skb = FUNC3(mac->macid, 0,
					    QLINK_CMD_PHY_PARAMS_GET,
					    sizeof(struct qlink_cmd));
	if (!cmd_skb)
		return -ENOMEM;

	FUNC1(mac->bus);
	ret = FUNC5(mac->bus, cmd_skb, &resp_skb,
				       sizeof(*resp), &response_size);
	if (ret)
		goto out;

	resp = (struct qlink_resp_phy_params *)resp_skb->data;
	ret = FUNC4(mac, resp->info, response_size);

out:
	FUNC2(mac->bus);
	FUNC0(resp_skb);

	return ret;
}