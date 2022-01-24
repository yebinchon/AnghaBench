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
struct cpcap_charger_ddata {int /*<<< orphan*/  detect_work; int /*<<< orphan*/  vbus_work; int /*<<< orphan*/  dev; int /*<<< orphan*/  active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct cpcap_charger_ddata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 struct cpcap_charger_ddata* FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct cpcap_charger_ddata *ddata = FUNC5(pdev);
	int error;

	FUNC0(&ddata->active, 0);
	error = FUNC4(NULL);
	if (error)
		FUNC3(ddata->dev, "could not clear USB comparator: %i\n",
			 error);

	error = FUNC2(ddata, 0, 0, 0);
	if (error)
		FUNC3(ddata->dev, "could not clear charger: %i\n",
			 error);
	FUNC1(&ddata->vbus_work);
	FUNC1(&ddata->detect_work);

	return 0;
}