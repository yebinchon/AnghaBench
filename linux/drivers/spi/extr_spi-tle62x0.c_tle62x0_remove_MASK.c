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
struct tle62x0_state {int nr_gpio; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_status_show ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** gpio_attrs ; 
 int /*<<< orphan*/  FUNC1 (struct tle62x0_state*) ; 
 struct tle62x0_state* FUNC2 (struct spi_device*) ; 

__attribute__((used)) static int FUNC3(struct spi_device *spi)
{
	struct tle62x0_state *st = FUNC2(spi);
	int ptr;

	for (ptr = 0; ptr < st->nr_gpio; ptr++)
		FUNC0(&spi->dev, gpio_attrs[ptr]);

	FUNC0(&spi->dev, &dev_attr_status_show);
	FUNC1(st);
	return 0;
}