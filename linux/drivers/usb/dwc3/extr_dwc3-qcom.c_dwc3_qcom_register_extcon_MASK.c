#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct extcon_dev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* notifier_call ) (TYPE_1__*,int,struct extcon_dev*) ;} ;
struct dwc3_qcom {struct extcon_dev* edev; TYPE_1__ vbus_nb; TYPE_1__ host_nb; struct extcon_dev* host_edev; struct device* dev; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXTCON_USB ; 
 int /*<<< orphan*/  EXTCON_USB_HOST ; 
 scalar_t__ FUNC0 (struct extcon_dev*) ; 
 int FUNC1 (struct extcon_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int FUNC3 (struct device*,struct extcon_dev*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,struct extcon_dev*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,struct extcon_dev*) ; 
 void* FUNC6 (struct device*,int) ; 
 scalar_t__ FUNC7 (struct extcon_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC9(struct dwc3_qcom *qcom)
{
	struct device		*dev = qcom->dev;
	struct extcon_dev	*host_edev;
	int			ret;

	if (!FUNC8(dev->of_node, "extcon"))
		return 0;

	qcom->edev = FUNC6(dev, 0);
	if (FUNC0(qcom->edev))
		return FUNC1(qcom->edev);

	qcom->vbus_nb.notifier_call = dwc3_qcom_vbus_notifier;

	qcom->host_edev = FUNC6(dev, 1);
	if (FUNC0(qcom->host_edev))
		qcom->host_edev = NULL;

	ret = FUNC3(dev, qcom->edev, EXTCON_USB,
					    &qcom->vbus_nb);
	if (ret < 0) {
		FUNC2(dev, "VBUS notifier register failed\n");
		return ret;
	}

	if (qcom->host_edev)
		host_edev = qcom->host_edev;
	else
		host_edev = qcom->edev;

	qcom->host_nb.notifier_call = dwc3_qcom_host_notifier;
	ret = FUNC3(dev, host_edev, EXTCON_USB_HOST,
					    &qcom->host_nb);
	if (ret < 0) {
		FUNC2(dev, "Host notifier register failed\n");
		return ret;
	}

	/* Update initial VBUS override based on extcon state */
	if (FUNC7(qcom->edev, EXTCON_USB) ||
	    !FUNC7(host_edev, EXTCON_USB_HOST))
		FUNC5(&qcom->vbus_nb, true, qcom->edev);
	else
		FUNC5(&qcom->vbus_nb, false, qcom->edev);

	return 0;
}