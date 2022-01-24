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
struct ssusb_mtk {struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (struct device_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ssusb_mtk*) ; 

int FUNC4(struct ssusb_mtk *ssusb, struct device_node *parent_dn)
{
	struct device *parent_dev = ssusb->dev;
	int ret;

	FUNC3(ssusb);

	ret = FUNC2(parent_dn, NULL, NULL, parent_dev);
	if (ret) {
		FUNC0(parent_dev, "failed to create child devices at %pOF\n",
				parent_dn);
		return ret;
	}

	FUNC1(parent_dev, "xHCI platform device register success...\n");

	return 0;
}