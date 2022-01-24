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
struct qtnf_bus {int dummy; } ;
struct qlink_resp_get_hw_info {int dummy; } ;
struct qlink_cmd {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  QLINK_CMD_GET_HW_INFO ; 
 int /*<<< orphan*/  QLINK_MACID_RSVD ; 
 int /*<<< orphan*/  QLINK_VIFID_RSVD ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct qtnf_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct qtnf_bus*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct qtnf_bus*,struct qlink_resp_get_hw_info const*,size_t) ; 
 int FUNC5 (struct qtnf_bus*,struct sk_buff*,struct sk_buff**,int,size_t*) ; 

int FUNC6(struct qtnf_bus *bus)
{
	struct sk_buff *cmd_skb, *resp_skb = NULL;
	const struct qlink_resp_get_hw_info *resp;
	size_t info_len = 0;
	int ret = 0;

	cmd_skb = FUNC3(QLINK_MACID_RSVD, QLINK_VIFID_RSVD,
					    QLINK_CMD_GET_HW_INFO,
					    sizeof(struct qlink_cmd));
	if (!cmd_skb)
		return -ENOMEM;

	FUNC1(bus);
	ret = FUNC5(bus, cmd_skb, &resp_skb,
				       sizeof(*resp), &info_len);
	if (ret)
		goto out;

	resp = (const struct qlink_resp_get_hw_info *)resp_skb->data;
	ret = FUNC4(bus, resp, info_len);

out:
	FUNC2(bus);
	FUNC0(resp_skb);

	return ret;
}