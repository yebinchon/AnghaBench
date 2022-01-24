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
typedef  int u8 ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  RV3029_ONOFF_CTRL ; 
 int /*<<< orphan*/  RV3029_ONOFF_CTRL_EERE ; 
 int RV3029_STATUS_VLOW1 ; 
 int RV3029_STATUS_VLOW2 ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int FUNC3 (struct device*,int*) ; 
 int FUNC4 (struct device*,int) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	int ret;
	u8 sr;

	/* Check whether we are in the allowed voltage range. */
	ret = FUNC3(dev, &sr);
	if (ret < 0)
		return ret;
	if (sr & (RV3029_STATUS_VLOW1 | RV3029_STATUS_VLOW2)) {
		/* We clear the bits and retry once just in case
		 * we had a brown out in early startup.
		 */
		sr &= ~RV3029_STATUS_VLOW1;
		sr &= ~RV3029_STATUS_VLOW2;
		ret = FUNC4(dev, sr);
		if (ret < 0)
			return ret;
		FUNC6(1000, 10000);
		ret = FUNC3(dev, &sr);
		if (ret < 0)
			return ret;
		if (sr & (RV3029_STATUS_VLOW1 | RV3029_STATUS_VLOW2)) {
			FUNC0(dev,
				"Supply voltage is too low to safely access the EEPROM.\n");
			return -ENODEV;
		}
	}

	/* Disable eeprom refresh. */
	ret = FUNC5(dev, RV3029_ONOFF_CTRL, RV3029_ONOFF_CTRL_EERE,
				 0);
	if (ret < 0)
		return ret;

	/* Wait for any previous eeprom accesses to finish. */
	ret = FUNC1(dev);
	if (ret < 0)
		FUNC2(dev);

	return ret;
}