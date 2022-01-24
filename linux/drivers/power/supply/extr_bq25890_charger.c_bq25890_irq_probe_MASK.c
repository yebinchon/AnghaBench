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
struct gpio_desc {int dummy; } ;
struct bq25890_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BQ25890_IRQ_PIN ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 int FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct gpio_desc* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct gpio_desc*) ; 

__attribute__((used)) static int FUNC5(struct bq25890_device *bq)
{
	struct gpio_desc *irq;

	irq = FUNC3(bq->dev, BQ25890_IRQ_PIN, GPIOD_IN);
	if (FUNC0(irq)) {
		FUNC2(bq->dev, "Could not probe irq pin.\n");
		return FUNC1(irq);
	}

	return FUNC4(irq);
}