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
typedef  unsigned long u32 ;
struct meson_spicc_device {TYPE_1__* pdev; int /*<<< orphan*/  core; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,unsigned int) ; 
 unsigned long SPICC_DATARATE_MASK ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,unsigned long,unsigned long,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned long) ; 

__attribute__((used)) static u32 FUNC4(struct meson_spicc_device *spicc, u32 conf,
				   u32 speed)
{
	unsigned long parent, value;
	unsigned int i, div;

	parent = FUNC1(spicc->core);

	/* Find closest inferior/equal possible speed */
	for (i = 0 ; i < 7 ; ++i) {
		/* 2^(data_rate+2) */
		value = parent >> (i + 2);

		if (value <= speed)
			break;
	}

	/* If provided speed it lower than max divider, use max divider */
	if (i > 7) {
		div = 7;
		FUNC3(&spicc->pdev->dev, "unable to get close to speed %u\n",
			      speed);
	} else
		div = i;

	FUNC2(&spicc->pdev->dev, "parent %lu, speed %u -> %lu (%u)\n",
		parent, speed, value, div);

	conf &= ~SPICC_DATARATE_MASK;
	conf |= FUNC0(SPICC_DATARATE_MASK, div);

	return conf;
}