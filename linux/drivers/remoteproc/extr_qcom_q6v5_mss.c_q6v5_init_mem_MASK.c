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
struct resource {int dummy; } ;
struct q6v5 {int /*<<< orphan*/  halt_nc; int /*<<< orphan*/  halt_modem; int /*<<< orphan*/  halt_q6; void* halt_map; void* rmb_base; void* reg_base; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_phandle_args {int /*<<< orphan*/ * args; int /*<<< orphan*/  np; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 void* FUNC3 (TYPE_1__*,struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,struct of_phandle_args*) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct q6v5 *qproc, struct platform_device *pdev)
{
	struct of_phandle_args args;
	struct resource *res;
	int ret;

	res = FUNC6(pdev, IORESOURCE_MEM, "qdsp6");
	qproc->reg_base = FUNC3(&pdev->dev, res);
	if (FUNC0(qproc->reg_base))
		return FUNC1(qproc->reg_base);

	res = FUNC6(pdev, IORESOURCE_MEM, "rmb");
	qproc->rmb_base = FUNC3(&pdev->dev, res);
	if (FUNC0(qproc->rmb_base))
		return FUNC1(qproc->rmb_base);

	ret = FUNC5(pdev->dev.of_node,
					       "qcom,halt-regs", 3, 0, &args);
	if (ret < 0) {
		FUNC2(&pdev->dev, "failed to parse qcom,halt-regs\n");
		return -EINVAL;
	}

	qproc->halt_map = FUNC7(args.np);
	FUNC4(args.np);
	if (FUNC0(qproc->halt_map))
		return FUNC1(qproc->halt_map);

	qproc->halt_q6 = args.args[0];
	qproc->halt_modem = args.args[1];
	qproc->halt_nc = args.args[2];

	return 0;
}