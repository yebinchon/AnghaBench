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
struct phy_mdm6600 {scalar_t__ awake; TYPE_1__* mode_gpios; } ;
struct gpio_desc {int dummy; } ;
struct TYPE_2__ {struct gpio_desc** desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDM6600_MODEM_WAKE_DELAY_MS ; 
 size_t PHY_MDM6600_MODE0 ; 
 int /*<<< orphan*/  FUNC0 (struct gpio_desc*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct phy_mdm6600 *ddata)
{
	struct gpio_desc *mode_gpio0;

	mode_gpio0 = ddata->mode_gpios->desc[PHY_MDM6600_MODE0];
	FUNC0(mode_gpio0, 1);
	FUNC2(5, 15);
	FUNC0(mode_gpio0, 0);
	if (ddata->awake)
		FUNC2(5, 15);
	else
		FUNC1(MDM6600_MODEM_WAKE_DELAY_MS);
}