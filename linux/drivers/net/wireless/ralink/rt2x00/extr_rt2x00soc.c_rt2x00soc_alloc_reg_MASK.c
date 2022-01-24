#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  base; } ;
struct rt2x00_dev {void* rf; TYPE_2__* ops; void* eeprom; TYPE_1__ csr; int /*<<< orphan*/  dev; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  rf_size; int /*<<< orphan*/  eeprom_size; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC2 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*) ; 
 struct platform_device* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct rt2x00_dev *rt2x00dev)
{
	struct platform_device *pdev = FUNC6(rt2x00dev->dev);
	struct resource *res;

	res = FUNC2(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENODEV;

	rt2x00dev->csr.base = FUNC0(res->start, FUNC3(res));
	if (!rt2x00dev->csr.base)
		return -ENOMEM;

	rt2x00dev->eeprom = FUNC1(rt2x00dev->ops->eeprom_size, GFP_KERNEL);
	if (!rt2x00dev->eeprom)
		goto exit;

	rt2x00dev->rf = FUNC1(rt2x00dev->ops->rf_size, GFP_KERNEL);
	if (!rt2x00dev->rf)
		goto exit;

	return 0;

exit:
	FUNC4("Failed to allocate registers\n");
	FUNC5(rt2x00dev);

	return -ENOMEM;
}