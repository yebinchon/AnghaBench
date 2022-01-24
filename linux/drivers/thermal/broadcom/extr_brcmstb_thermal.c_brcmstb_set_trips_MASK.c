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
struct brcmstb_thermal_priv {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int INT_MAX ; 
 int /*<<< orphan*/  TMON_TRIP_TYPE_HIGH ; 
 int /*<<< orphan*/  TMON_TRIP_TYPE_LOW ; 
 int /*<<< orphan*/  FUNC0 (struct brcmstb_thermal_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmstb_thermal_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static int FUNC3(void *data, int low, int high)
{
	struct brcmstb_thermal_priv *priv = data;

	FUNC2(priv->dev, "set trips %d <--> %d\n", low, high);

	/*
	 * Disable low-temp if "low" is too small. As per thermal framework
	 * API, we use -INT_MAX rather than INT_MIN.
	 */
	if (low <= -INT_MAX) {
		FUNC1(priv, TMON_TRIP_TYPE_LOW, 0);
	} else {
		FUNC0(priv, TMON_TRIP_TYPE_LOW, low);
		FUNC1(priv, TMON_TRIP_TYPE_LOW, 1);
	}

	/* Disable high-temp if "high" is too big. */
	if (high == INT_MAX) {
		FUNC1(priv, TMON_TRIP_TYPE_HIGH, 0);
	} else {
		FUNC0(priv, TMON_TRIP_TYPE_HIGH, high);
		FUNC1(priv, TMON_TRIP_TYPE_HIGH, 1);
	}

	return 0;
}