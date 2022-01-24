#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_6__ {int /*<<< orphan*/ * parent; } ;
struct men_z069_drv {TYPE_1__ wdt; struct resource* mem; int /*<<< orphan*/ * base; } ;
struct mcb_device_id {int dummy; } ;
struct mcb_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct resource*) ; 
 int FUNC1 (struct resource*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct men_z069_drv* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*) ; 
 struct resource* FUNC5 (struct mcb_device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct mcb_device*,struct men_z069_drv*) ; 
 TYPE_1__ men_z069_wdt ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  FUNC7 (struct resource*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,struct men_z069_drv*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct mcb_device *dev,
			  const struct mcb_device_id *id)
{
	struct men_z069_drv *drv;
	struct resource *mem;

	drv = FUNC3(&dev->dev, sizeof(struct men_z069_drv), GFP_KERNEL);
	if (!drv)
		return -ENOMEM;

	mem = FUNC5(dev, "z069-wdt");
	if (FUNC0(mem))
		return FUNC1(mem);

	drv->base = FUNC2(&dev->dev, mem->start, FUNC7(mem));
	if (drv->base == NULL)
		goto release_mem;

	drv->mem = mem;

	drv->wdt = men_z069_wdt;
	FUNC8(&drv->wdt, 0, &dev->dev);
	FUNC11(&drv->wdt, nowayout);
	FUNC10(&drv->wdt, drv);
	drv->wdt.parent = &dev->dev;
	FUNC6(dev, drv);

	return FUNC9(&men_z069_wdt);

release_mem:
	FUNC4(mem);
	return -ENOMEM;
}