#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct qcom_adsp {int /*<<< orphan*/  halt_lpass; int /*<<< orphan*/  halt_map; TYPE_1__* dev; int /*<<< orphan*/  qdsp6ss_base; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 struct device_node* FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*) ; 

__attribute__((used)) static int FUNC10(struct qcom_adsp *adsp,
				struct platform_device *pdev)
{
	struct device_node *syscon;
	struct resource *res;
	int ret;

	res = FUNC7(pdev, IORESOURCE_MEM, 0);
	adsp->qdsp6ss_base = FUNC3(&pdev->dev, res->start,
			FUNC8(res));
	if (!adsp->qdsp6ss_base) {
		FUNC2(adsp->dev, "failed to map QDSP6SS registers\n");
		return -ENOMEM;
	}

	syscon = FUNC5(pdev->dev.of_node, "qcom,halt-regs", 0);
	if (!syscon) {
		FUNC2(&pdev->dev, "failed to parse qcom,halt-regs\n");
		return -EINVAL;
	}

	adsp->halt_map = FUNC9(syscon);
	FUNC4(syscon);
	if (FUNC0(adsp->halt_map))
		return FUNC1(adsp->halt_map);

	ret = FUNC6(pdev->dev.of_node, "qcom,halt-regs",
			1, &adsp->halt_lpass);
	if (ret < 0) {
		FUNC2(&pdev->dev, "no offset in syscon\n");
		return ret;
	}

	return 0;
}