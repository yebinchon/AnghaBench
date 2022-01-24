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
struct s3c2410_wdt {scalar_t__ reg_base; TYPE_1__* drv_data; int /*<<< orphan*/  wdt_device; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int quirks; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int QUIRK_HAS_WTCLRINT_REG ; 
 scalar_t__ S3C2410_WTCLRINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct s3c2410_wdt* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irqno, void *param)
{
	struct s3c2410_wdt *wdt = FUNC1(param);

	FUNC0(wdt->dev, "watchdog timer expired (irq)\n");

	FUNC2(&wdt->wdt_device);

	if (wdt->drv_data->quirks & QUIRK_HAS_WTCLRINT_REG)
		FUNC3(0x1, wdt->reg_base + S3C2410_WTCLRINT);

	return IRQ_HANDLED;
}