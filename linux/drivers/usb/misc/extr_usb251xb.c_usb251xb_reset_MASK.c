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
struct usb251xb {TYPE_1__* i2c; int /*<<< orphan*/  gpio_reset; } ;
struct TYPE_2__ {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_LOCK_SEGMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct usb251xb *hub, int state)
{
	if (!hub->gpio_reset)
		return;

	FUNC1(hub->i2c->adapter, I2C_LOCK_SEGMENT);

	FUNC0(hub->gpio_reset, state);

	/* wait for hub recovery/stabilization */
	if (!state)
		FUNC3(500, 750);	/* >=500us at power on */
	else
		FUNC3(1, 10);	/* >=1us at power down */

	FUNC2(hub->i2c->adapter, I2C_LOCK_SEGMENT);
}