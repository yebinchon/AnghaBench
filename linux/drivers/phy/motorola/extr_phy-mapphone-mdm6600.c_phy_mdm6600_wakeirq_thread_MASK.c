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
struct phy_mdm6600 {int /*<<< orphan*/  dev; TYPE_1__* mode_gpios; } ;
struct gpio_desc {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {struct gpio_desc** desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 size_t PHY_MDM6600_MODE1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_desc*) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *data)
{
	struct phy_mdm6600 *ddata = data;
	struct gpio_desc *mode_gpio1;

	mode_gpio1 = ddata->mode_gpios->desc[PHY_MDM6600_MODE1];
	FUNC0(ddata->dev, "OOB wake on mode_gpio1: %i\n",
		FUNC1(mode_gpio1));

	return IRQ_HANDLED;
}