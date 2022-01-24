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
struct qcom_wcnss {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 struct qcom_wcnss* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qcom_wcnss*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct qcom_wcnss *wcnss = FUNC0(pdev->dev.parent);

	FUNC1(wcnss, NULL, false);

	return 0;
}