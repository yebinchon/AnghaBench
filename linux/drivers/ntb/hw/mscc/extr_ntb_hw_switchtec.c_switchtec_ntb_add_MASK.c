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
struct switchtec_ntb {int /*<<< orphan*/  ntb; struct switchtec_dev* stdev; } ;
struct switchtec_dev {int /*<<< orphan*/  link_notifier; struct switchtec_ntb* sndev; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct class_interface {int dummy; } ;
struct TYPE_2__ {int class; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LINK_MESSAGE ; 
 int /*<<< orphan*/  MSG_LINK_FORCE_DOWN ; 
 int PCI_CLASS_BRIDGE_OTHER ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct switchtec_ntb*) ; 
 struct switchtec_ntb* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct switchtec_ntb*) ; 
 int /*<<< orphan*/  FUNC7 (struct switchtec_ntb*) ; 
 int /*<<< orphan*/  FUNC8 (struct switchtec_ntb*) ; 
 int FUNC9 (struct switchtec_ntb*) ; 
 int /*<<< orphan*/  FUNC10 (struct switchtec_ntb*) ; 
 int FUNC11 (struct switchtec_ntb*) ; 
 int /*<<< orphan*/  FUNC12 (struct switchtec_ntb*) ; 
 int /*<<< orphan*/  FUNC13 (struct switchtec_ntb*) ; 
 int FUNC14 (struct switchtec_ntb*) ; 
 int FUNC15 (struct switchtec_ntb*) ; 
 int FUNC16 (struct switchtec_ntb*) ; 
 int /*<<< orphan*/  switchtec_ntb_link_notification ; 
 int /*<<< orphan*/  FUNC17 (struct switchtec_ntb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct switchtec_dev* FUNC18 (struct device*) ; 

__attribute__((used)) static int FUNC19(struct device *dev,
			     struct class_interface *class_intf)
{
	struct switchtec_dev *stdev = FUNC18(dev);
	struct switchtec_ntb *sndev;
	int rc;

	stdev->sndev = NULL;

	if (stdev->pdev->class != (PCI_CLASS_BRIDGE_OTHER << 8))
		return -ENODEV;

	sndev = FUNC4(sizeof(*sndev), GFP_KERNEL, FUNC2(dev));
	if (!sndev)
		return -ENOMEM;

	sndev->stdev = stdev;
	rc = FUNC16(sndev);
	if (rc)
		goto free_and_exit;

	FUNC13(sndev);

	rc = FUNC14(sndev);
	if (rc)
		goto free_and_exit;

	rc = FUNC9(sndev);
	if (rc)
		goto free_and_exit;

	FUNC10(sndev);
	FUNC12(sndev);

	rc = FUNC15(sndev);
	if (rc)
		goto deinit_crosslink;

	rc = FUNC11(sndev);
	if (rc)
		goto deinit_shared_and_exit;

	/*
	 * If this host crashed, the other host may think the link is
	 * still up. Tell them to force it down (it will go back up
	 * once we register the ntb device).
	 */
	FUNC17(sndev, LINK_MESSAGE, MSG_LINK_FORCE_DOWN);

	rc = FUNC5(&sndev->ntb);
	if (rc)
		goto deinit_and_exit;

	stdev->sndev = sndev;
	stdev->link_notifier = switchtec_ntb_link_notification;
	FUNC1(dev, "NTB device registered\n");

	return 0;

deinit_and_exit:
	FUNC7(sndev);
deinit_shared_and_exit:
	FUNC8(sndev);
deinit_crosslink:
	FUNC6(sndev);
free_and_exit:
	FUNC3(sndev);
	FUNC0(dev, "failed to register ntb device: %d\n", rc);
	return rc;
}