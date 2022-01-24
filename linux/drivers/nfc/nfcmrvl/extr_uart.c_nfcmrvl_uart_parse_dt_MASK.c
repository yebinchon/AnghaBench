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
struct nfcmrvl_platform_data {int flow_control; int break_control; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct device_node*,struct nfcmrvl_platform_data*) ; 
 scalar_t__ FUNC1 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct device_node* FUNC2 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct device_node *node,
				 struct nfcmrvl_platform_data *pdata)
{
	struct device_node *matched_node;
	int ret;

	matched_node = FUNC2(node, "marvell,nfc-uart");
	if (!matched_node) {
		matched_node = FUNC2(node, "mrvl,nfc-uart");
		if (!matched_node)
			return -ENODEV;
	}

	ret = FUNC0(matched_node, pdata);
	if (ret < 0) {
		FUNC4("Failed to get generic entries\n");
		FUNC3(matched_node);
		return ret;
	}

	if (FUNC1(matched_node, "flow-control", NULL))
		pdata->flow_control = 1;
	else
		pdata->flow_control = 0;

	if (FUNC1(matched_node, "break-control", NULL))
		pdata->break_control = 1;
	else
		pdata->break_control = 0;

	FUNC3(matched_node);

	return 0;
}