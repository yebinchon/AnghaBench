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
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct qtnf_pcie_bus_priv {int /*<<< orphan*/  shm_ipc_ep_in; } ;
struct qtnf_bus {int /*<<< orphan*/  fw_state; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  QTNF_FW_STATE_DEAD ; 
 struct qtnf_pcie_bus_priv* FUNC0 (struct qtnf_bus*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct qtnf_bus *bus, struct sk_buff *skb)
{
	struct qtnf_pcie_bus_priv *priv = FUNC0(bus);
	int ret;

	ret = FUNC2(&priv->shm_ipc_ep_in, skb->data, skb->len);

	if (ret == -ETIMEDOUT) {
		FUNC1("EP firmware is dead\n");
		bus->fw_state = QTNF_FW_STATE_DEAD;
	}

	return ret;
}