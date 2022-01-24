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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;
struct spi_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS1390_REG_TRICKLE ; 
 int /*<<< orphan*/  DS1390_TRICKLE_CHARGER_250_OHM ; 
 int /*<<< orphan*/  DS1390_TRICKLE_CHARGER_2K_OHM ; 
 int /*<<< orphan*/  DS1390_TRICKLE_CHARGER_4K_OHM ; 
 int /*<<< orphan*/  DS1390_TRICKLE_CHARGER_DIODE ; 
 int /*<<< orphan*/  DS1390_TRICKLE_CHARGER_ENABLE ; 
 int /*<<< orphan*/  DS1390_TRICKLE_CHARGER_NO_DIODE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int*) ; 

__attribute__((used)) static void FUNC4(struct spi_device *spi)
{
	u32 ohms = 0;
	u8 value;

	if (FUNC3(spi->dev.of_node, "trickle-resistor-ohms",
				 &ohms))
		goto out;

	/* Enable charger */
	value = DS1390_TRICKLE_CHARGER_ENABLE;
	if (FUNC2(spi->dev.of_node, "trickle-diode-disable"))
		value |= DS1390_TRICKLE_CHARGER_NO_DIODE;
	else
		value |= DS1390_TRICKLE_CHARGER_DIODE;

	/* Resistor select */
	switch (ohms) {
	case 250:
		value |= DS1390_TRICKLE_CHARGER_250_OHM;
		break;
	case 2000:
		value |= DS1390_TRICKLE_CHARGER_2K_OHM;
		break;
	case 4000:
		value |= DS1390_TRICKLE_CHARGER_4K_OHM;
		break;
	default:
		FUNC0(&spi->dev,
			 "Unsupported ohm value %02ux in dt\n", ohms);
		return;
	}

	FUNC1(&spi->dev, DS1390_REG_TRICKLE, value);

out:
	return;
}