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
struct TYPE_2__ {int knows_txdone; struct device* dev; } ;
struct qcom_smd_edge {int irq; int /*<<< orphan*/  name; int /*<<< orphan*/  ipc_bit; int /*<<< orphan*/  ipc_offset; int /*<<< orphan*/ * ipc_regmap; int /*<<< orphan*/ * mbox_chan; TYPE_1__ mbox_client; int /*<<< orphan*/  remote_pid; int /*<<< orphan*/  edge_id; int /*<<< orphan*/  of_node; int /*<<< orphan*/  state_work; int /*<<< orphan*/  scan_work; int /*<<< orphan*/  channels_lock; int /*<<< orphan*/  channels; } ;
struct device_node {int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  QCOM_SMEM_HOST_ANY ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int FUNC5 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qcom_smd_edge*) ; 
 int FUNC6 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*) ; 
 struct device_node* FUNC9 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct device_node*,char const*,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct device_node*,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qcom_channel_scan_worker ; 
 int /*<<< orphan*/  qcom_channel_state_worker ; 
 int /*<<< orphan*/  qcom_smd_edge_intr ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (struct device_node*) ; 

__attribute__((used)) static int FUNC15(struct device *dev,
			       struct device_node *node,
			       struct qcom_smd_edge *edge)
{
	struct device_node *syscon_np;
	const char *key;
	int irq;
	int ret;

	FUNC0(&edge->channels);
	FUNC13(&edge->channels_lock);

	FUNC1(&edge->scan_work, qcom_channel_scan_worker);
	FUNC1(&edge->state_work, qcom_channel_state_worker);

	edge->of_node = FUNC8(node);

	key = "qcom,smd-edge";
	ret = FUNC11(node, key, &edge->edge_id);
	if (ret) {
		FUNC4(dev, "edge missing %s property\n", key);
		return -EINVAL;
	}

	edge->remote_pid = QCOM_SMEM_HOST_ANY;
	key = "qcom,remote-pid";
	FUNC11(node, key, &edge->remote_pid);

	edge->mbox_client.dev = dev;
	edge->mbox_client.knows_txdone = true;
	edge->mbox_chan = FUNC7(&edge->mbox_client, 0);
	if (FUNC2(edge->mbox_chan)) {
		if (FUNC3(edge->mbox_chan) != -ENODEV)
			return FUNC3(edge->mbox_chan);

		edge->mbox_chan = NULL;

		syscon_np = FUNC9(node, "qcom,ipc", 0);
		if (!syscon_np) {
			FUNC4(dev, "no qcom,ipc node\n");
			return -ENODEV;
		}

		edge->ipc_regmap = FUNC14(syscon_np);
		if (FUNC2(edge->ipc_regmap))
			return FUNC3(edge->ipc_regmap);

		key = "qcom,ipc";
		ret = FUNC12(node, key, 1, &edge->ipc_offset);
		if (ret < 0) {
			FUNC4(dev, "no offset in %s\n", key);
			return -EINVAL;
		}

		ret = FUNC12(node, key, 2, &edge->ipc_bit);
		if (ret < 0) {
			FUNC4(dev, "no bit in %s\n", key);
			return -EINVAL;
		}
	}

	ret = FUNC10(node, "label", &edge->name);
	if (ret < 0)
		edge->name = node->name;

	irq = FUNC6(node, 0);
	if (irq < 0) {
		FUNC4(dev, "required smd interrupt missing\n");
		return -EINVAL;
	}

	ret = FUNC5(dev, irq,
			       qcom_smd_edge_intr, IRQF_TRIGGER_RISING,
			       node->name, edge);
	if (ret) {
		FUNC4(dev, "failed to request smd irq\n");
		return ret;
	}

	edge->irq = irq;

	return 0;
}