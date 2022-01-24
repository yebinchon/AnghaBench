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
typedef  int /*<<< orphan*/  u8 ;
struct resource {int start; int flags; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct ds1wm_driver_data {int bus_shift; int /*<<< orphan*/  clock_rate; int /*<<< orphan*/  reset_recover_delay; scalar_t__ active_high; int /*<<< orphan*/  is_hw_big_endian; } ;
struct ds1wm_data {int bus_shift; int irq; int /*<<< orphan*/  is_hw_big_endian; struct platform_device* pdev; int /*<<< orphan*/  int_en_reg_none; int /*<<< orphan*/  reset_recover_delay; int /*<<< orphan*/  cell; int /*<<< orphan*/  map; } ;
struct TYPE_3__ {void* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS1WM_INTEN_IAS ; 
 int /*<<< orphan*/  DS1WM_INT_EN ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int IORESOURCE_IRQ_HIGHEDGE ; 
 int IORESOURCE_IRQ_HIGHLEVEL ; 
 int IORESOURCE_IRQ_LOWEDGE ; 
 int IORESOURCE_IRQ_LOWLEVEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  IRQ_TYPE_EDGE_FALLING ; 
 int /*<<< orphan*/  IRQ_TYPE_EDGE_RISING ; 
 int /*<<< orphan*/  IRQ_TYPE_LEVEL_HIGH ; 
 int /*<<< orphan*/  IRQ_TYPE_LEVEL_LOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,...) ; 
 struct ds1wm_driver_data* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 struct ds1wm_data* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct ds1wm_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct ds1wm_data*) ; 
 int /*<<< orphan*/  ds1wm_isr ; 
 TYPE_1__ ds1wm_master ; 
 int /*<<< orphan*/  FUNC7 (struct ds1wm_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ds1wm_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct ds1wm_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct ds1wm_data*) ; 
 int FUNC14 (struct resource*) ; 
 int FUNC15 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct ds1wm_data *ds1wm_data;
	struct ds1wm_driver_data *plat;
	struct resource *res;
	int ret;
	u8 inten;

	if (!pdev)
		return -ENODEV;

	ds1wm_data = FUNC4(&pdev->dev, sizeof(*ds1wm_data), GFP_KERNEL);
	if (!ds1wm_data)
		return -ENOMEM;

	FUNC13(pdev, ds1wm_data);

	res = FUNC12(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENXIO;
	ds1wm_data->map = FUNC3(&pdev->dev, res->start,
				       FUNC14(res));
	if (!ds1wm_data->map)
		return -ENOMEM;

	ds1wm_data->pdev = pdev;
	ds1wm_data->cell = FUNC11(pdev);
	if (!ds1wm_data->cell)
		return -ENODEV;
	plat = FUNC2(&pdev->dev);
	if (!plat)
		return -ENODEV;

	/* how many bits to shift register number to get register offset */
	if (plat->bus_shift > 2) {
		FUNC1(&ds1wm_data->pdev->dev,
			"illegal bus shift %d, not written",
			ds1wm_data->bus_shift);
		return -EINVAL;
	}

	ds1wm_data->bus_shift = plat->bus_shift;
	/* make sure resource has space for 8 registers */
	if ((8 << ds1wm_data->bus_shift) > FUNC14(res)) {
		FUNC1(&ds1wm_data->pdev->dev,
			"memory resource size %d to small, should be %d\n",
			(int)FUNC14(res),
			8 << ds1wm_data->bus_shift);
		return -EINVAL;
	}

	ds1wm_data->is_hw_big_endian = plat->is_hw_big_endian;

	res = FUNC12(pdev, IORESOURCE_IRQ, 0);
	if (!res)
		return -ENXIO;
	ds1wm_data->irq = res->start;
	ds1wm_data->int_en_reg_none = (plat->active_high ? DS1WM_INTEN_IAS : 0);
	ds1wm_data->reset_recover_delay = plat->reset_recover_delay;

	/* Mask interrupts, set IAS before claiming interrupt */
	inten = FUNC7(ds1wm_data, DS1WM_INT_EN);
	FUNC9(ds1wm_data,
		DS1WM_INT_EN, ds1wm_data->int_en_reg_none);

	if (res->flags & IORESOURCE_IRQ_HIGHEDGE)
		FUNC10(ds1wm_data->irq, IRQ_TYPE_EDGE_RISING);
	if (res->flags & IORESOURCE_IRQ_LOWEDGE)
		FUNC10(ds1wm_data->irq, IRQ_TYPE_EDGE_FALLING);
	if (res->flags & IORESOURCE_IRQ_HIGHLEVEL)
		FUNC10(ds1wm_data->irq, IRQ_TYPE_LEVEL_HIGH);
	if (res->flags & IORESOURCE_IRQ_LOWLEVEL)
		FUNC10(ds1wm_data->irq, IRQ_TYPE_LEVEL_LOW);

	ret = FUNC5(&pdev->dev, ds1wm_data->irq, ds1wm_isr,
			IRQF_SHARED, "ds1wm", ds1wm_data);
	if (ret) {
		FUNC1(&ds1wm_data->pdev->dev,
			"devm_request_irq %d failed with errno %d\n",
			ds1wm_data->irq,
			ret);

		return ret;
	}

	FUNC8(ds1wm_data);

	ds1wm_master.data = (void *)ds1wm_data;

	ret = FUNC15(&ds1wm_master);
	if (ret)
		goto err;

	FUNC0(&ds1wm_data->pdev->dev,
		"ds1wm: probe successful, IAS: %d, rec.delay: %d, clockrate: %d, bus-shift: %d, is Hw Big Endian: %d\n",
		plat->active_high,
		plat->reset_recover_delay,
		plat->clock_rate,
		ds1wm_data->bus_shift,
		ds1wm_data->is_hw_big_endian);
	return 0;

err:
	FUNC6(ds1wm_data);

	return ret;
}