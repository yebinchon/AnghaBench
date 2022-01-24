#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct spi_device {int /*<<< orphan*/  dev; } ;
struct ad2s1210_state {int /*<<< orphan*/ * gpios; struct spi_device* sdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* gpios ; 

__attribute__((used)) static int FUNC5(struct ad2s1210_state *st)
{
	struct spi_device *spi = st->sdev;
	int i, ret;

	for (i = 0; i < FUNC0(gpios); i++) {
		st->gpios[i] = FUNC4(&spi->dev, gpios[i].name,
					      gpios[i].flags);
		if (FUNC1(st->gpios[i])) {
			ret = FUNC2(st->gpios[i]);
			FUNC3(&spi->dev,
				"ad2s1210: failed to request %s GPIO: %d\n",
				gpios[i].name, ret);
			return ret;
		}
	}

	return 0;
}