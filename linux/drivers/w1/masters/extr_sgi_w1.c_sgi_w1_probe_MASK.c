#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sgi_w1_platform_data {int /*<<< orphan*/  dev_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_id; int /*<<< orphan*/  touch_bit; int /*<<< orphan*/  reset_bus; struct sgi_w1_device* data; } ;
struct sgi_w1_device {TYPE_1__ bus_master; int /*<<< orphan*/  dev_id; int /*<<< orphan*/  mcr; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct sgi_w1_platform_data* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct resource*) ; 
 struct sgi_w1_device* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct sgi_w1_device*) ; 
 int /*<<< orphan*/  sgi_w1_reset_bus ; 
 int /*<<< orphan*/  sgi_w1_touch_bit ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct sgi_w1_device *sdev;
	struct sgi_w1_platform_data *pdata;
	struct resource *res;

	sdev = FUNC4(&pdev->dev, sizeof(struct sgi_w1_device),
			    GFP_KERNEL);
	if (!sdev)
		return -ENOMEM;

	res = FUNC5(pdev, IORESOURCE_MEM, 0);
	sdev->mcr = FUNC3(&pdev->dev, res);
	if (FUNC0(sdev->mcr))
		return FUNC1(sdev->mcr);

	sdev->bus_master.data = sdev;
	sdev->bus_master.reset_bus = sgi_w1_reset_bus;
	sdev->bus_master.touch_bit = sgi_w1_touch_bit;

	pdata = FUNC2(&pdev->dev);
	if (pdata) {
		FUNC7(sdev->dev_id, pdata->dev_id, sizeof(sdev->dev_id));
		sdev->bus_master.dev_id = sdev->dev_id;
	}

	FUNC6(pdev, sdev);

	return FUNC8(&sdev->bus_master);
}