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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct cpcap_battery_ddata {int /*<<< orphan*/  reg; int /*<<< orphan*/  active; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPCAP_REG_BPEOL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 struct cpcap_battery_ddata* FUNC2 (struct platform_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct cpcap_battery_ddata *ddata = FUNC2(pdev);
	int error;

	FUNC0(&ddata->active, 0);
	error = FUNC3(ddata->reg, CPCAP_REG_BPEOL,
				   0xffff, 0);
	if (error)
		FUNC1(&pdev->dev, "could not disable: %i\n", error);

	return 0;
}