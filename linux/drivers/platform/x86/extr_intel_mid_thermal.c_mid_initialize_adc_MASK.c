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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ ADC_CHNL_START_ADDR ; 
 scalar_t__ ADC_LOOP_MAX ; 
 int /*<<< orphan*/  INTEL_MSIC_ADC1CNTL3 ; 
 int /*<<< orphan*/  MSIC_ADCTHERM_MASK ; 
 scalar_t__ channel_index ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	u8  data;
	u16 base_addr;
	int ret;

	/*
	 * Ensure that adctherm is disabled before we
	 * initialize the ADC
	 */
	ret = FUNC3(INTEL_MSIC_ADC1CNTL3, &data);
	if (ret)
		return ret;

	data &= ~MSIC_ADCTHERM_MASK;
	ret = FUNC4(INTEL_MSIC_ADC1CNTL3, data);
	if (ret)
		return ret;

	/* Index of the first channel in which the stop bit is set */
	channel_index = FUNC2();
	if (channel_index < 0) {
		FUNC1(dev, "No free ADC channels");
		return channel_index;
	}

	base_addr = ADC_CHNL_START_ADDR + channel_index;

	if (!(channel_index == 0 || channel_index == ADC_LOOP_MAX)) {
		/* Reset stop bit for channels other than 0 and 12 */
		ret = FUNC5(base_addr);
		if (ret)
			return ret;

		/* Index of the first free channel */
		base_addr++;
		channel_index++;
	}

	ret = FUNC6(base_addr);
	if (ret) {
		FUNC1(dev, "unable to enable ADC");
		return ret;
	}
	FUNC0(dev, "ADC initialization successful");
	return ret;
}