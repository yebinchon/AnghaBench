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
struct sk_buff {int dummy; } ;
struct qtnf_bus {int dummy; } ;
struct qlink_cmd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLINK_CMD_FW_DEINIT ; 
 int /*<<< orphan*/  QLINK_MACID_RSVD ; 
 int /*<<< orphan*/  QLINK_VIFID_RSVD ; 
 int /*<<< orphan*/  FUNC0 (struct qtnf_bus*) ; 
 int /*<<< orphan*/  FUNC1 (struct qtnf_bus*) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qtnf_bus*,struct sk_buff*) ; 

void FUNC4(struct qtnf_bus *bus)
{
	struct sk_buff *cmd_skb;

	cmd_skb = FUNC2(QLINK_MACID_RSVD, QLINK_VIFID_RSVD,
					    QLINK_CMD_FW_DEINIT,
					    sizeof(struct qlink_cmd));
	if (!cmd_skb)
		return;

	FUNC0(bus);
	FUNC3(bus, cmd_skb);
	FUNC1(bus);
}