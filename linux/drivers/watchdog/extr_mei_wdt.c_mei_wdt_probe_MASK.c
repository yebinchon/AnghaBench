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
struct mei_wdt {int resp_required; struct mei_cl_device* cldev; int /*<<< orphan*/  unregister; int /*<<< orphan*/  response; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  state; int /*<<< orphan*/  timeout; } ;
struct mei_cl_device_id {int dummy; } ;
struct mei_cl_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int firmware_version; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEI_WDT_DEFAULT_TIMEOUT ; 
 int /*<<< orphan*/  MEI_WDT_PROBE ; 
 int /*<<< orphan*/  FUNC1 (struct mei_wdt*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mei_wdt*) ; 
 struct mei_wdt* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mei_cl_device*) ; 
 int FUNC7 (struct mei_cl_device*) ; 
 int FUNC8 (struct mei_cl_device*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct mei_cl_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mei_cl_device*,struct mei_wdt*) ; 
 int FUNC11 (struct mei_cl_device*) ; 
 int /*<<< orphan*/  mei_wdt_notif ; 
 int FUNC12 (struct mei_wdt*) ; 
 int FUNC13 (struct mei_wdt*) ; 
 int /*<<< orphan*/  mei_wdt_rx ; 
 int /*<<< orphan*/  mei_wdt_unregister_work ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 TYPE_1__ wd_info ; 

__attribute__((used)) static int FUNC15(struct mei_cl_device *cldev,
			 const struct mei_cl_device_id *id)
{
	struct mei_wdt *wdt;
	int ret;

	wdt = FUNC5(sizeof(struct mei_wdt), GFP_KERNEL);
	if (!wdt)
		return -ENOMEM;

	wdt->timeout = MEI_WDT_DEFAULT_TIMEOUT;
	wdt->state = MEI_WDT_PROBE;
	wdt->cldev = cldev;
	wdt->resp_required = FUNC11(cldev) > 0x1;
	FUNC14(&wdt->reg_lock);
	FUNC3(&wdt->response);
	FUNC0(&wdt->unregister, mei_wdt_unregister_work);

	FUNC10(cldev, wdt);

	ret = FUNC7(cldev);
	if (ret < 0) {
		FUNC2(&cldev->dev, "Could not enable cl device\n");
		goto err_out;
	}

	ret = FUNC9(wdt->cldev, mei_wdt_rx);
	if (ret) {
		FUNC2(&cldev->dev, "Could not reg rx event ret=%d\n", ret);
		goto err_disable;
	}

	ret = FUNC8(wdt->cldev, mei_wdt_notif);
	/* on legacy devices notification is not supported
	 */
	if (ret && ret != -EOPNOTSUPP) {
		FUNC2(&cldev->dev, "Could not reg notif event ret=%d\n", ret);
		goto err_disable;
	}

	wd_info.firmware_version = FUNC11(cldev);

	if (wdt->resp_required)
		ret = FUNC12(wdt);
	else
		ret = FUNC13(wdt);

	if (ret)
		goto err_disable;

	FUNC1(wdt);

	return 0;

err_disable:
	FUNC6(cldev);

err_out:
	FUNC4(wdt);

	return ret;
}