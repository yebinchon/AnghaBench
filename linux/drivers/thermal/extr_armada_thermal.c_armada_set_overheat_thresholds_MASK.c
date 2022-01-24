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
typedef  unsigned int u32 ;
struct armada_thermal_priv {int current_threshold; int current_hysteresis; int /*<<< orphan*/  syscon; struct armada_thermal_data* data; } ;
struct armada_thermal_data {unsigned int temp_mask; unsigned int thresh_shift; unsigned int hyst_mask; unsigned int hyst_shift; int /*<<< orphan*/  syscon_control1_off; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct armada_thermal_data*,int) ; 
 unsigned int FUNC1 (struct armada_thermal_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct armada_thermal_priv *priv,
					   int thresh_mc, int hyst_mc)
{
	struct armada_thermal_data *data = priv->data;
	unsigned int threshold = FUNC1(data, thresh_mc);
	unsigned int hysteresis = FUNC0(data, hyst_mc);
	u32 ctrl1;

	FUNC2(priv->syscon, data->syscon_control1_off, &ctrl1);

	/* Set Threshold */
	if (thresh_mc >= 0) {
		ctrl1 &= ~(data->temp_mask << data->thresh_shift);
		ctrl1 |= threshold << data->thresh_shift;
		priv->current_threshold = thresh_mc;
	}

	/* Set Hysteresis */
	if (hyst_mc >= 0) {
		ctrl1 &= ~(data->hyst_mask << data->hyst_shift);
		ctrl1 |= hysteresis << data->hyst_shift;
		priv->current_hysteresis = hyst_mc;
	}

	FUNC3(priv->syscon, data->syscon_control1_off, ctrl1);
}