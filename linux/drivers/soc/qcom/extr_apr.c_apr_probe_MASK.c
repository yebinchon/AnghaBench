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
struct device {int /*<<< orphan*/  of_node; } ;
struct rpmsg_device {int /*<<< orphan*/  ept; struct device dev; } ;
struct apr {int /*<<< orphan*/  svcs_idr; int /*<<< orphan*/  svcs_lock; int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  rx_list; int /*<<< orphan*/  rx_work; struct device* dev; int /*<<< orphan*/  rxwq; int /*<<< orphan*/  ch; int /*<<< orphan*/  dest_domain_id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  apr_rxwq ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct apr*) ; 
 struct apr* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct rpmsg_device *rpdev)
{
	struct device *dev = &rpdev->dev;
	struct apr *apr;
	int ret;

	apr = FUNC5(dev, sizeof(*apr), GFP_KERNEL);
	if (!apr)
		return -ENOMEM;

	ret = FUNC7(dev->of_node, "qcom,apr-domain", &apr->dest_domain_id);
	if (ret) {
		FUNC3(dev, "APR Domain ID not specified in DT\n");
		return ret;
	}

	FUNC4(dev, apr);
	apr->ch = rpdev->ept;
	apr->dev = dev;
	apr->rxwq = FUNC2("qcom_apr_rx");
	if (!apr->rxwq) {
		FUNC3(apr->dev, "Failed to start Rx WQ\n");
		return -ENOMEM;
	}
	FUNC1(&apr->rx_work, apr_rxwq);
	FUNC0(&apr->rx_list);
	FUNC9(&apr->rx_lock);
	FUNC9(&apr->svcs_lock);
	FUNC6(&apr->svcs_idr);
	FUNC8(dev);

	return 0;
}