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
struct nfcmrvl_platform_data {int irq; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct device_node*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device_node*,struct nfcmrvl_platform_data*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int FUNC3(struct device_node *node,
				struct nfcmrvl_platform_data *pdata)
{
	int ret;

	ret = FUNC1(node, pdata);
	if (ret < 0) {
		FUNC2("Failed to get generic entries\n");
		return ret;
	}

	ret = FUNC0(node, 0);
	if (ret < 0) {
		FUNC2("Unable to get irq, error: %d\n", ret);
		return ret;
	}
	pdata->irq = ret;

	return 0;
}