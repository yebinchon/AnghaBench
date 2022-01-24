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
struct anybuss_ops {int host_idx; scalar_t__ irq; int /*<<< orphan*/  regmap; int /*<<< orphan*/  reset; } ;
struct anybuss_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct anybuss_host* FUNC0 (int /*<<< orphan*/ ) ; 
 struct anybuss_host* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,int) ; 
 struct anybuss_host* FUNC4 (int /*<<< orphan*/ *,struct anybuss_ops*) ; 
 int /*<<< orphan*/  export_reset_0 ; 
 int /*<<< orphan*/  export_reset_1 ; 
 scalar_t__ FUNC5 (struct platform_device*,int) ; 

__attribute__((used)) static struct anybuss_host *
FUNC6(struct platform_device *pdev, int idx)
{
	struct anybuss_ops ops = {};

	switch (idx) {
	case 0:
		ops.reset = export_reset_0;
		break;
	case 1:
		ops.reset = export_reset_1;
		break;
	default:
		return FUNC1(-EINVAL);
	}
	ops.host_idx = idx;
	ops.regmap = FUNC3(pdev, idx);
	if (FUNC2(ops.regmap))
		return FUNC0(ops.regmap);
	ops.irq = FUNC5(pdev, idx);
	if (ops.irq <= 0)
		return FUNC1(-EINVAL);
	return FUNC4(&pdev->dev, &ops);
}