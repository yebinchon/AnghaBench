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
struct brcmstb_thermal_priv {int /*<<< orphan*/  thermal; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  TMON_TRIP_TYPE_HIGH ; 
 int /*<<< orphan*/  TMON_TRIP_TYPE_LOW ; 
 int FUNC0 (struct brcmstb_thermal_priv*) ; 
 int FUNC1 (struct brcmstb_thermal_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmstb_thermal_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	struct brcmstb_thermal_priv *priv = data;
	int low, high, intr;

	low = FUNC1(priv, TMON_TRIP_TYPE_LOW);
	high = FUNC1(priv, TMON_TRIP_TYPE_HIGH);
	intr = FUNC0(priv);

	FUNC3(priv->dev, "low/intr/high: %d/%d/%d\n",
			low, intr, high);

	/* Disable high-temp until next threshold shift */
	if (intr >= high)
		FUNC2(priv, TMON_TRIP_TYPE_HIGH, 0);
	/* Disable low-temp until next threshold shift */
	if (intr <= low)
		FUNC2(priv, TMON_TRIP_TYPE_LOW, 0);

	/*
	 * Notify using the interrupt temperature, in case the temperature
	 * changes before it can next be read out
	 */
	FUNC4(priv->thermal, intr);

	return IRQ_HANDLED;
}