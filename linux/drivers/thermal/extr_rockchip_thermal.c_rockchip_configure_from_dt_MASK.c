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
typedef  scalar_t__ u32 ;
struct rockchip_thermal_data {int tshut_mode; int tshut_polarity; int /*<<< orphan*/  grf; TYPE_1__* chip; scalar_t__ tshut_temp; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ tshut_mode; scalar_t__ tshut_polarity; scalar_t__ tshut_temp; } ;

/* Variables and functions */
 int EINVAL ; 
 int ERANGE ; 
 scalar_t__ INT_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TSHUT_LOW_ACTIVE ; 
 scalar_t__ TSHUT_MODE_GPIO ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 scalar_t__ FUNC3 (struct device_node*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC5(struct device *dev,
				      struct device_node *np,
				      struct rockchip_thermal_data *thermal)
{
	u32 shut_temp, tshut_mode, tshut_polarity;

	if (FUNC3(np, "rockchip,hw-tshut-temp", &shut_temp)) {
		FUNC2(dev,
			 "Missing tshut temp property, using default %d\n",
			 thermal->chip->tshut_temp);
		thermal->tshut_temp = thermal->chip->tshut_temp;
	} else {
		if (shut_temp > INT_MAX) {
			FUNC1(dev, "Invalid tshut temperature specified: %d\n",
				shut_temp);
			return -ERANGE;
		}
		thermal->tshut_temp = shut_temp;
	}

	if (FUNC3(np, "rockchip,hw-tshut-mode", &tshut_mode)) {
		FUNC2(dev,
			 "Missing tshut mode property, using default (%s)\n",
			 thermal->chip->tshut_mode == TSHUT_MODE_GPIO ?
				"gpio" : "cru");
		thermal->tshut_mode = thermal->chip->tshut_mode;
	} else {
		thermal->tshut_mode = tshut_mode;
	}

	if (thermal->tshut_mode > 1) {
		FUNC1(dev, "Invalid tshut mode specified: %d\n",
			thermal->tshut_mode);
		return -EINVAL;
	}

	if (FUNC3(np, "rockchip,hw-tshut-polarity",
				 &tshut_polarity)) {
		FUNC2(dev,
			 "Missing tshut-polarity property, using default (%s)\n",
			 thermal->chip->tshut_polarity == TSHUT_LOW_ACTIVE ?
				"low" : "high");
		thermal->tshut_polarity = thermal->chip->tshut_polarity;
	} else {
		thermal->tshut_polarity = tshut_polarity;
	}

	if (thermal->tshut_polarity > 1) {
		FUNC1(dev, "Invalid tshut-polarity specified: %d\n",
			thermal->tshut_polarity);
		return -EINVAL;
	}

	/* The tsadc wont to handle the error in here since some SoCs didn't
	 * need this property.
	 */
	thermal->grf = FUNC4(np, "rockchip,grf");
	if (FUNC0(thermal->grf))
		FUNC2(dev, "Missing rockchip,grf property\n");

	return 0;
}