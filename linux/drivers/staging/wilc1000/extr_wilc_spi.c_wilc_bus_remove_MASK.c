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
struct wilc {scalar_t__ gpio_irq; } ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct wilc* FUNC1 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct wilc*) ; 

__attribute__((used)) static int FUNC3(struct spi_device *spi)
{
	struct wilc *wilc = FUNC1(spi);

	/* free the GPIO in module remove */
	if (wilc->gpio_irq)
		FUNC0(wilc->gpio_irq);
	FUNC2(wilc);
	return 0;
}