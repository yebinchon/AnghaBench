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
typedef  int /*<<< orphan*/  u32 ;
struct tegra_pmc {int /*<<< orphan*/  dev; scalar_t__ clk; } ;
typedef  enum tegra_io_pad { ____Placeholder_tegra_io_pad } tegra_io_pad ;

/* Variables and functions */
 unsigned long FUNC0 (int,unsigned long) ; 
 int /*<<< orphan*/  DPD_SAMPLE ; 
 unsigned long DPD_SAMPLE_ENABLE ; 
 int ENODEV ; 
 int /*<<< orphan*/  SEL_DPD_TIM ; 
 unsigned long FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct tegra_pmc*,int,unsigned long*,unsigned long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_pmc*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct tegra_pmc *pmc, enum tegra_io_pad id,
				unsigned long *request, unsigned long *status,
				u32 *mask)
{
	unsigned long rate, value;
	int err;

	err = FUNC3(pmc, id, request, status, mask);
	if (err)
		return err;

	if (pmc->clk) {
		rate = FUNC1(pmc->clk);
		if (!rate) {
			FUNC2(pmc->dev, "failed to get clock rate\n");
			return -ENODEV;
		}

		FUNC4(pmc, DPD_SAMPLE_ENABLE, DPD_SAMPLE);

		/* must be at least 200 ns, in APB (PCLK) clock cycles */
		value = FUNC0(1000000000, rate);
		value = FUNC0(200, value);
		FUNC4(pmc, value, SEL_DPD_TIM);
	}

	return 0;
}