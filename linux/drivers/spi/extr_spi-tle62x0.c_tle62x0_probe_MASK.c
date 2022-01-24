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
struct tle62x0_state {int nr_gpio; int /*<<< orphan*/  lock; int /*<<< orphan*/  gpio_state; struct spi_device* us; } ;
struct tle62x0_pdata {int gpio_count; int /*<<< orphan*/  init_state; } ;
struct spi_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  dev_attr_status_show ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct tle62x0_pdata* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** gpio_attrs ; 
 int /*<<< orphan*/  FUNC4 (struct tle62x0_state*) ; 
 struct tle62x0_state* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct spi_device*,struct tle62x0_state*) ; 

__attribute__((used)) static int FUNC8(struct spi_device *spi)
{
	struct tle62x0_state *st;
	struct tle62x0_pdata *pdata;
	int ptr;
	int ret;

	pdata = FUNC1(&spi->dev);
	if (pdata == NULL) {
		FUNC0(&spi->dev, "no device data specified\n");
		return -EINVAL;
	}

	st = FUNC5(sizeof(struct tle62x0_state), GFP_KERNEL);
	if (st == NULL)
		return -ENOMEM;

	st->us = spi;
	st->nr_gpio = pdata->gpio_count;
	st->gpio_state = pdata->init_state;

	FUNC6(&st->lock);

	ret = FUNC2(&spi->dev, &dev_attr_status_show);
	if (ret) {
		FUNC0(&spi->dev, "cannot create status attribute\n");
		goto err_status;
	}

	for (ptr = 0; ptr < pdata->gpio_count; ptr++) {
		ret = FUNC2(&spi->dev, gpio_attrs[ptr]);
		if (ret) {
			FUNC0(&spi->dev, "cannot create gpio attribute\n");
			goto err_gpios;
		}
	}

	/* tle62x0_write(st); */
	FUNC7(spi, st);
	return 0;

 err_gpios:
	while (--ptr >= 0)
		FUNC3(&spi->dev, gpio_attrs[ptr]);

	FUNC3(&spi->dev, &dev_attr_status_show);

 err_status:
	FUNC4(st);
	return ret;
}