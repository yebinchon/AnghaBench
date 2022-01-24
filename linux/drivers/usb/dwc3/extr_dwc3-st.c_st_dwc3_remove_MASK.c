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
struct st_dwc3 {int /*<<< orphan*/  rstc_rst; int /*<<< orphan*/  rstc_pwrdn; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct st_dwc3* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct st_dwc3 *dwc3_data = FUNC1(pdev);

	FUNC0(&pdev->dev);

	FUNC2(dwc3_data->rstc_pwrdn);
	FUNC2(dwc3_data->rstc_rst);

	return 0;
}