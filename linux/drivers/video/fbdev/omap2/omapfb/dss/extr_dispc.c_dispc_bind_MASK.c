#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_8__ {scalar_t__ irq; int /*<<< orphan*/  syscon_pol_offset; int /*<<< orphan*/  syscon_pol; struct platform_device* pdev; int /*<<< orphan*/  base; int /*<<< orphan*/  feat; int /*<<< orphan*/  control_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISPC_REVISION ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ dispc ; 
 int /*<<< orphan*/  dispc_dump_regs ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (struct device_node*,char*) ; 
 scalar_t__ FUNC15 (struct device_node*,char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC17 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (struct resource*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct device_node*,char*) ; 
 struct platform_device* FUNC23 (struct device*) ; 

__attribute__((used)) static int FUNC24(struct device *dev, struct device *master, void *data)
{
	struct platform_device *pdev = FUNC23(dev);
	u32 rev;
	int r = 0;
	struct resource *dispc_mem;
	struct device_node *np = pdev->dev.of_node;

	dispc.pdev = pdev;

	FUNC21(&dispc.control_lock);

	dispc.feat = FUNC8();
	if (!dispc.feat)
		return -ENODEV;

	dispc_mem = FUNC17(dispc.pdev, IORESOURCE_MEM, 0);
	if (!dispc_mem) {
		FUNC0("can't get IORESOURCE_MEM DISPC\n");
		return -EINVAL;
	}

	dispc.base = FUNC7(&pdev->dev, dispc_mem->start,
				  FUNC20(dispc_mem));
	if (!dispc.base) {
		FUNC0("can't ioremap DISPC\n");
		return -ENOMEM;
	}

	dispc.irq = FUNC16(dispc.pdev, 0);
	if (dispc.irq < 0) {
		FUNC0("platform_get_irq failed\n");
		return -ENODEV;
	}

	if (np && FUNC14(np, "syscon-pol")) {
		dispc.syscon_pol = FUNC22(np, "syscon-pol");
		if (FUNC2(dispc.syscon_pol)) {
			FUNC6(&pdev->dev, "failed to get syscon-pol regmap\n");
			return FUNC3(dispc.syscon_pol);
		}

		if (FUNC15(np, "syscon-pol", 1,
				&dispc.syscon_pol_offset)) {
			FUNC6(&pdev->dev, "failed to get syscon-pol offset\n");
			return -EINVAL;
		}
	}

	FUNC19(&pdev->dev);

	r = FUNC10();
	if (r)
		goto err_runtime_get;

	FUNC4();

	rev = FUNC9(DISPC_REVISION);
	FUNC5(&pdev->dev, "OMAP DISPC rev %d.%d\n",
	       FUNC1(rev, 7, 4), FUNC1(rev, 3, 0));

	FUNC11();

	FUNC13();

	FUNC12("dispc", dispc_dump_regs);

	return 0;

err_runtime_get:
	FUNC18(&pdev->dev);
	return r;
}