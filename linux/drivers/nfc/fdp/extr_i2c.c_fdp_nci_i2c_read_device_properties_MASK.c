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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FDP_DP_CLOCK_FREQ_NAME ; 
 int /*<<< orphan*/  FDP_DP_CLOCK_TYPE_NAME ; 
 int /*<<< orphan*/  FDP_DP_FW_VSC_CFG_NAME ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 scalar_t__ FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,scalar_t__*) ; 
 scalar_t__* FUNC6 (struct device*,scalar_t__,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct device *dev,
					       u8 *clock_type, u32 *clock_freq,
					       u8 **fw_vsc_cfg)
{
	int r;
	u8 len;

	r = FUNC3(dev, FDP_DP_CLOCK_TYPE_NAME, clock_type);
	if (r) {
		FUNC0(dev, "Using default clock type");
		*clock_type = 0;
	}

	r = FUNC2(dev, FDP_DP_CLOCK_FREQ_NAME, clock_freq);
	if (r) {
		FUNC0(dev, "Using default clock frequency\n");
		*clock_freq = 26000;
	}

	if (FUNC1(dev, FDP_DP_FW_VSC_CFG_NAME)) {
		r = FUNC3(dev, FDP_DP_FW_VSC_CFG_NAME,
					    &len);

		if (r || len <= 0)
			goto vsc_read_err;

		/* Add 1 to the length to inclue the length byte itself */
		len++;

		*fw_vsc_cfg = FUNC6(dev,
					   len, sizeof(**fw_vsc_cfg),
					   GFP_KERNEL);

		r = FUNC4(dev, FDP_DP_FW_VSC_CFG_NAME,
						  *fw_vsc_cfg, len);

		if (r) {
			FUNC5(dev, *fw_vsc_cfg);
			goto vsc_read_err;
		}
	} else {
vsc_read_err:
		FUNC0(dev, "FW vendor specific commands not present\n");
		*fw_vsc_cfg = NULL;
	}

	FUNC0(dev, "Clock type: %d, clock frequency: %d, VSC: %s",
		*clock_type, *clock_freq, *fw_vsc_cfg != NULL ? "yes" : "no");
}