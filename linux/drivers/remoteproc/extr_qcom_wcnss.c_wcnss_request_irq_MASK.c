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
struct qcom_wcnss {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irq_handler_t ;

/* Variables and functions */
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct qcom_wcnss*) ; 
 int FUNC3 (struct platform_device*,char const*) ; 

__attribute__((used)) static int FUNC4(struct qcom_wcnss *wcnss,
			     struct platform_device *pdev,
			     const char *name,
			     bool optional,
			     irq_handler_t thread_fn)
{
	int ret;

	ret = FUNC3(pdev, name);
	if (ret < 0 && optional) {
		FUNC0(&pdev->dev, "no %s IRQ defined, ignoring\n", name);
		return 0;
	} else if (ret < 0) {
		FUNC1(&pdev->dev, "no %s IRQ defined\n", name);
		return ret;
	}

	ret = FUNC2(&pdev->dev, ret,
					NULL, thread_fn,
					IRQF_TRIGGER_RISING | IRQF_ONESHOT,
					"wcnss", wcnss);
	if (ret)
		FUNC1(&pdev->dev, "request %s IRQ failed\n", name);

	return ret;
}