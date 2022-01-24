#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct resource {scalar_t__ start; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {scalar_t__ sch_wdtba; int /*<<< orphan*/  unlock_sequence; } ;
struct TYPE_5__ {int /*<<< orphan*/ * parent; int /*<<< orphan*/  timeout; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  IORESOURCE_IO ; 
 scalar_t__ WDTLR ; 
 int WDT_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 TYPE_4__ ie6xx_wdt_data ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__ ie6xx_wdt_dev ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  nowayout ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct resource*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timeout ; 
 int FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct resource *res;
	u8 wdtlr;
	int ret;

	res = FUNC6(pdev, IORESOURCE_IO, 0);
	if (!res)
		return -ENODEV;

	if (!FUNC8(res->start, FUNC9(res), pdev->name)) {
		FUNC1(&pdev->dev, "Watchdog region 0x%llx already in use!\n",
			(u64)res->start);
		return -EBUSY;
	}

	ie6xx_wdt_data.sch_wdtba = res->start;
	FUNC0(&pdev->dev, "WDT = 0x%X\n", ie6xx_wdt_data.sch_wdtba);

	ie6xx_wdt_dev.timeout = timeout;
	FUNC12(&ie6xx_wdt_dev, nowayout);
	ie6xx_wdt_dev.parent = &pdev->dev;

	FUNC10(&ie6xx_wdt_data.unlock_sequence);

	wdtlr = FUNC5(ie6xx_wdt_data.sch_wdtba + WDTLR);
	if (wdtlr & WDT_LOCK)
		FUNC2(&pdev->dev,
			"Watchdog Timer is Locked (Reg=0x%x)\n", wdtlr);

	FUNC4();

	ret = FUNC11(&ie6xx_wdt_dev);
	if (ret)
		goto misc_register_error;

	return 0;

misc_register_error:
	FUNC3();
	FUNC7(res->start, FUNC9(res));
	ie6xx_wdt_data.sch_wdtba = 0;
	return ret;
}