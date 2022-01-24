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
struct sk_buff {scalar_t__ data; } ;
struct qtnf_vif {TYPE_1__* mac; int /*<<< orphan*/  vifid; } ;
struct qlink_cmd_external_auth {int /*<<< orphan*/  status; int /*<<< orphan*/  bssid; } ;
struct cfg80211_external_auth_params {int /*<<< orphan*/  status; int /*<<< orphan*/  bssid; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus; int /*<<< orphan*/  macid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  QLINK_CMD_EXTERNAL_AUTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct sk_buff*) ; 

int FUNC6(struct qtnf_vif *vif,
				struct cfg80211_external_auth_params *auth)
{
	struct sk_buff *cmd_skb;
	struct qlink_cmd_external_auth *cmd;
	int ret;

	cmd_skb = FUNC4(vif->mac->macid, vif->vifid,
					    QLINK_CMD_EXTERNAL_AUTH,
					    sizeof(*cmd));
	if (!cmd_skb)
		return -ENOMEM;

	cmd = (struct qlink_cmd_external_auth *)cmd_skb->data;

	FUNC1(cmd->bssid, auth->bssid);
	cmd->status = FUNC0(auth->status);

	FUNC2(vif->mac->bus);
	ret = FUNC5(vif->mac->bus, cmd_skb);
	if (ret)
		goto out;

out:
	FUNC3(vif->mac->bus);

	return ret;
}