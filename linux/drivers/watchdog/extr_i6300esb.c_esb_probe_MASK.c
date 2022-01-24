#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  timeout; int /*<<< orphan*/  max_timeout; int /*<<< orphan*/  min_timeout; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct esb_dev {struct pci_dev* pdev; int /*<<< orphan*/  base; TYPE_1__ wdd; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ESB_HEARTBEAT_DEFAULT ; 
 int /*<<< orphan*/  ESB_HEARTBEAT_MAX ; 
 int /*<<< orphan*/  ESB_HEARTBEAT_MIN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct esb_dev* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct esb_dev*) ; 
 int /*<<< orphan*/  esb_info ; 
 int /*<<< orphan*/  FUNC3 (struct esb_dev*) ; 
 int /*<<< orphan*/  esb_ops ; 
 int /*<<< orphan*/  heartbeat ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC12(struct pci_dev *pdev,
		const struct pci_device_id *ent)
{
	struct esb_dev *edev;
	int ret;

	edev = FUNC1(&pdev->dev, sizeof(*edev), GFP_KERNEL);
	if (!edev)
		return -ENOMEM;

	/* Check whether or not the hardware watchdog is there */
	edev->pdev = pdev;
	if (!FUNC2(edev))
		return -ENODEV;

	/* Initialize the watchdog and make sure it does not run */
	edev->wdd.info = &esb_info;
	edev->wdd.ops = &esb_ops;
	edev->wdd.min_timeout = ESB_HEARTBEAT_MIN;
	edev->wdd.max_timeout = ESB_HEARTBEAT_MAX;
	edev->wdd.timeout = ESB_HEARTBEAT_DEFAULT;
	FUNC7(&edev->wdd, heartbeat, NULL);
	FUNC9(&edev->wdd, nowayout);
	FUNC10(&edev->wdd);
	FUNC11(&edev->wdd);
	FUNC3(edev);

	/* Register the watchdog so that userspace has access to it */
	ret = FUNC8(&edev->wdd);
	if (ret != 0)
		goto err_unmap;
	FUNC0(&pdev->dev,
		"initialized. heartbeat=%d sec (nowayout=%d)\n",
		edev->wdd.timeout, nowayout);
	return 0;

err_unmap:
	FUNC4(edev->base);
	FUNC6(edev->pdev, 0);
	FUNC5(edev->pdev);
	return ret;
}