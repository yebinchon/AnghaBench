#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pps_gpio_device_data {int /*<<< orphan*/  pps; scalar_t__ assert_falling_edge; scalar_t__ capture_clear; int /*<<< orphan*/  gpio_pin; } ;
struct pps_event_time {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  PPS_CAPTUREASSERT ; 
 int /*<<< orphan*/  PPS_CAPTURECLEAR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct pps_event_time*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct pps_event_time*) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	const struct pps_gpio_device_data *info;
	struct pps_event_time ts;
	int rising_edge;

	/* Get the time stamp first */
	FUNC2(&ts);

	info = data;

	rising_edge = FUNC0(info->gpio_pin);
	if ((rising_edge && !info->assert_falling_edge) ||
			(!rising_edge && info->assert_falling_edge))
		FUNC1(info->pps, &ts, PPS_CAPTUREASSERT, data);
	else if (info->capture_clear &&
			((rising_edge && info->assert_falling_edge) ||
			(!rising_edge && !info->assert_falling_edge)))
		FUNC1(info->pps, &ts, PPS_CAPTURECLEAR, data);

	return IRQ_HANDLED;
}