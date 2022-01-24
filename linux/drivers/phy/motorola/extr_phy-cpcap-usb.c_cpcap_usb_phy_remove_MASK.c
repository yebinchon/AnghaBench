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
struct platform_device {int dummy; } ;
struct cpcap_phy_ddata {int /*<<< orphan*/  vusb; int /*<<< orphan*/  refclk; int /*<<< orphan*/  detect_work; int /*<<< orphan*/  phy; int /*<<< orphan*/  dev; int /*<<< orphan*/  active; } ;

/* Variables and functions */
 int /*<<< orphan*/  MUSB_VBUS_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct cpcap_phy_ddata*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct cpcap_phy_ddata* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct cpcap_phy_ddata *ddata = FUNC6(pdev);
	int error;

	FUNC0(&ddata->active, 0);
	error = FUNC3(ddata);
	if (error)
		FUNC4(ddata->dev, "could not set UART mode\n");

	error = FUNC5(MUSB_VBUS_OFF);
	if (error)
		FUNC4(ddata->dev, "could not set mailbox\n");

	FUNC8(&ddata->phy);
	FUNC1(&ddata->detect_work);
	FUNC2(ddata->refclk);
	FUNC7(ddata->vusb);

	return 0;
}