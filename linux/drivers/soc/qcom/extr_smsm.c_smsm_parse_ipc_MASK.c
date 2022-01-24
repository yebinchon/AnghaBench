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
struct smsm_host {int /*<<< orphan*/  ipc_bit; int /*<<< orphan*/  ipc_offset; int /*<<< orphan*/  ipc_regmap; } ;
struct qcom_smsm {TYPE_1__* dev; struct smsm_host* hosts; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  key ;
struct TYPE_2__ {struct device_node* of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,char*) ; 
 struct device_node* FUNC3 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device_node*,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 

__attribute__((used)) static int FUNC7(struct qcom_smsm *smsm, unsigned host_id)
{
	struct device_node *syscon;
	struct device_node *node = smsm->dev->of_node;
	struct smsm_host *host = &smsm->hosts[host_id];
	char key[16];
	int ret;

	FUNC5(key, sizeof(key), "qcom,ipc-%d", host_id);
	syscon = FUNC3(node, key, 0);
	if (!syscon)
		return 0;

	host->ipc_regmap = FUNC6(syscon);
	if (FUNC0(host->ipc_regmap))
		return FUNC1(host->ipc_regmap);

	ret = FUNC4(node, key, 1, &host->ipc_offset);
	if (ret < 0) {
		FUNC2(smsm->dev, "no offset in %s\n", key);
		return -EINVAL;
	}

	ret = FUNC4(node, key, 2, &host->ipc_bit);
	if (ret < 0) {
		FUNC2(smsm->dev, "no bit in %s\n", key);
		return -EINVAL;
	}

	return 0;
}