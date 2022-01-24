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
struct qcom_adsp {int /*<<< orphan*/  dev; void* aggre2_clk; scalar_t__ has_aggre2_clk; void* xo; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct qcom_adsp *adsp)
{
	int ret;

	adsp->xo = FUNC3(adsp->dev, "xo");
	if (FUNC0(adsp->xo)) {
		ret = FUNC1(adsp->xo);
		if (ret != -EPROBE_DEFER)
			FUNC2(adsp->dev, "failed to get xo clock");
		return ret;
	}

	if (adsp->has_aggre2_clk) {
		adsp->aggre2_clk = FUNC3(adsp->dev, "aggre2");
		if (FUNC0(adsp->aggre2_clk)) {
			ret = FUNC1(adsp->aggre2_clk);
			if (ret != -EPROBE_DEFER)
				FUNC2(adsp->dev,
					"failed to get aggre2 clock");
			return ret;
		}
	}

	return 0;
}