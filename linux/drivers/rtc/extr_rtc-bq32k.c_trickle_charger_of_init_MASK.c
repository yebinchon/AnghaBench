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
typedef  int u32 ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BQ32K_CFG2 ; 
 int /*<<< orphan*/  BQ32K_TCH2 ; 
 int EINVAL ; 
 int FUNC0 (struct device*,unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,char*) ; 
 scalar_t__ FUNC4 (struct device_node*,char*,int*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct device_node *node)
{
	unsigned char reg;
	int error;
	u32 ohms = 0;

	if (FUNC4(node, "trickle-resistor-ohms" , &ohms))
		return 0;

	switch (ohms) {
	case 180+940:
		/*
		 * TCHE[3:0] == 0x05, TCH2 == 1, TCFE == 0 (charging
		 * over diode and 940ohm resistor)
		 */

		if (FUNC3(node, "trickle-diode-disable")) {
			FUNC1(dev, "diode and resistor mismatch\n");
			return -EINVAL;
		}
		reg = 0x05;
		break;

	case 180+20000:
		/* diode disabled */

		if (!FUNC3(node, "trickle-diode-disable")) {
			FUNC1(dev, "bq32k: diode and resistor mismatch\n");
			return -EINVAL;
		}
		reg = 0x45;
		break;

	default:
		FUNC1(dev, "invalid resistor value (%d)\n", ohms);
		return -EINVAL;
	}

	error = FUNC0(dev, &reg, BQ32K_CFG2, 1);
	if (error)
		return error;

	reg = 0x20;
	error = FUNC0(dev, &reg, BQ32K_TCH2, 1);
	if (error)
		return error;

	FUNC2(dev, "Enabled trickle RTC battery charge.\n");
	return 0;
}