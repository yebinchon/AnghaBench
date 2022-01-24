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
struct qcom_smp2p {int /*<<< orphan*/  ipc_bit; int /*<<< orphan*/  ipc_offset; int /*<<< orphan*/  ipc_regmap; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 struct device_node* FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 

__attribute__((used)) static int FUNC6(struct qcom_smp2p *smp2p)
{
	struct device_node *syscon;
	struct device *dev = smp2p->dev;
	const char *key;
	int ret;

	syscon = FUNC3(dev->of_node, "qcom,ipc", 0);
	if (!syscon) {
		FUNC2(dev, "no qcom,ipc node\n");
		return -ENODEV;
	}

	smp2p->ipc_regmap = FUNC5(syscon);
	if (FUNC0(smp2p->ipc_regmap))
		return FUNC1(smp2p->ipc_regmap);

	key = "qcom,ipc";
	ret = FUNC4(dev->of_node, key, 1, &smp2p->ipc_offset);
	if (ret < 0) {
		FUNC2(dev, "no offset in %s\n", key);
		return -EINVAL;
	}

	ret = FUNC4(dev->of_node, key, 2, &smp2p->ipc_bit);
	if (ret < 0) {
		FUNC2(dev, "no bit in %s\n", key);
		return -EINVAL;
	}

	return 0;
}