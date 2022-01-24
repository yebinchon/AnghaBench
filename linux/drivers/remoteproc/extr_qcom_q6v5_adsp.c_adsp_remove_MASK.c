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
struct qcom_adsp {int /*<<< orphan*/  rproc; int /*<<< orphan*/  dev; int /*<<< orphan*/  ssr_subdev; int /*<<< orphan*/  sysmon; int /*<<< orphan*/  glink_subdev; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 struct qcom_adsp* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct qcom_adsp *adsp = FUNC0(pdev);

	FUNC5(adsp->rproc);

	FUNC2(adsp->rproc, &adsp->glink_subdev);
	FUNC4(adsp->sysmon);
	FUNC3(adsp->rproc, &adsp->ssr_subdev);
	FUNC1(adsp->dev);
	FUNC6(adsp->rproc);

	return 0;
}