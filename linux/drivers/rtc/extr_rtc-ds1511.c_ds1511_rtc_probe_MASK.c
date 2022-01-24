#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct rtc_plat_data {scalar_t__ irq; TYPE_1__* rtc; int /*<<< orphan*/  lock; TYPE_1__* ioaddr; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct nvmem_config {char* name; int word_size; int stride; int /*<<< orphan*/ * priv; int /*<<< orphan*/  reg_write; int /*<<< orphan*/  reg_read; int /*<<< orphan*/  size; } ;
struct TYPE_8__ {int nvram_old_abi; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int DS1511_BLF1 ; 
 int /*<<< orphan*/  DS1511_BME ; 
 int /*<<< orphan*/  DS1511_RAM_MAX ; 
 int /*<<< orphan*/  DS1511_WD_MSEC ; 
 int /*<<< orphan*/  DS1511_WD_SEC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  RTC_CMD ; 
 int /*<<< orphan*/  RTC_CMD1 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,struct resource*) ; 
 struct rtc_plat_data* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct platform_device*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* ds1511_base ; 
 int /*<<< orphan*/  ds1511_interrupt ; 
 int /*<<< orphan*/  ds1511_nvram_read ; 
 int /*<<< orphan*/  ds1511_nvram_write ; 
 int /*<<< orphan*/  ds1511_rtc_ops ; 
 scalar_t__ FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct rtc_plat_data*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,struct nvmem_config*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct resource *res;
	struct rtc_plat_data *pdata;
	int ret = 0;
	struct nvmem_config ds1511_nvmem_cfg = {
		.name = "ds1511_nvram",
		.word_size = 1,
		.stride = 1,
		.size = DS1511_RAM_MAX,
		.reg_read = ds1511_nvram_read,
		.reg_write = ds1511_nvram_write,
		.priv = &pdev->dev,
	};

	pdata = FUNC4(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
	if (!pdata)
		return -ENOMEM;

	res = FUNC8(pdev, IORESOURCE_MEM, 0);
	ds1511_base = FUNC3(&pdev->dev, res);
	if (FUNC0(ds1511_base))
		return FUNC1(ds1511_base);
	pdata->ioaddr = ds1511_base;
	pdata->irq = FUNC7(pdev, 0);

	/*
	 * turn on the clock and the crystal, etc.
	 */
	FUNC14(DS1511_BME, RTC_CMD);
	FUNC14(0, RTC_CMD1);
	/*
	 * clear the wdog counter
	 */
	FUNC14(0, DS1511_WD_MSEC);
	FUNC14(0, DS1511_WD_SEC);
	/*
	 * start the clock
	 */
	FUNC10();

	/*
	 * check for a dying bat-tree
	 */
	if (FUNC12(RTC_CMD1) & DS1511_BLF1)
		FUNC2(&pdev->dev, "voltage-low detected.\n");

	FUNC15(&pdata->lock);
	FUNC9(pdev, pdata);

	pdata->rtc = FUNC6(&pdev->dev);
	if (FUNC0(pdata->rtc))
		return FUNC1(pdata->rtc);

	pdata->rtc->ops = &ds1511_rtc_ops;

	pdata->rtc->nvram_old_abi = true;

	ret = FUNC13(pdata->rtc);
	if (ret)
		return ret;

	FUNC11(pdata->rtc, &ds1511_nvmem_cfg);

	/*
	 * if the platform has an interrupt in mind for this device,
	 * then by all means, set it
	 */
	if (pdata->irq > 0) {
		FUNC12(RTC_CMD1);
		if (FUNC5(&pdev->dev, pdata->irq, ds1511_interrupt,
			IRQF_SHARED, pdev->name, pdev) < 0) {

			FUNC2(&pdev->dev, "interrupt not available.\n");
			pdata->irq = 0;
		}
	}

	return 0;
}