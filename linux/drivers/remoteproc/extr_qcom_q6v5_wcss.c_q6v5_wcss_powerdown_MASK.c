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
struct q6v5_wcss {int /*<<< orphan*/  wcss_reset; scalar_t__ rmb_base; int /*<<< orphan*/  wcss_aon_reset; int /*<<< orphan*/  dev; int /*<<< orphan*/  halt_wcss; int /*<<< orphan*/  halt_map; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  HALT_CHECK_MAX_LOOPS ; 
 int SSCAON_BUS_EN ; 
 int SSCAON_BUS_MUX_MASK ; 
 scalar_t__ SSCAON_CONFIG ; 
 int SSCAON_ENABLE ; 
 scalar_t__ SSCAON_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct q6v5_wcss*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct q6v5_wcss *wcss)
{
	int ret;
	u32 val;

	/* 1 - Assert WCSS/Q6 HALTREQ */
	FUNC2(wcss, wcss->halt_map, wcss->halt_wcss);

	/* 2 - Enable WCSSAON_CONFIG */
	val = FUNC3(wcss->rmb_base + SSCAON_CONFIG);
	val |= SSCAON_ENABLE;
	FUNC6(val, wcss->rmb_base + SSCAON_CONFIG);

	/* 3 - Set SSCAON_CONFIG */
	val |= SSCAON_BUS_EN;
	val &= ~SSCAON_BUS_MUX_MASK;
	FUNC6(val, wcss->rmb_base + SSCAON_CONFIG);

	/* 4 - SSCAON_CONFIG 1 */
	val |= FUNC0(1);
	FUNC6(val, wcss->rmb_base + SSCAON_CONFIG);

	/* 5 - wait for SSCAON_STATUS */
	ret = FUNC4(wcss->rmb_base + SSCAON_STATUS,
				 val, (val & 0xffff) == 0x400, 1000,
				 HALT_CHECK_MAX_LOOPS);
	if (ret) {
		FUNC1(wcss->dev,
			"can't get SSCAON_STATUS rc:%d)\n", ret);
		return ret;
	}

	/* 6 - De-assert WCSS_AON reset */
	FUNC5(wcss->wcss_aon_reset);

	/* 7 - Disable WCSSAON_CONFIG 13 */
	val = FUNC3(wcss->rmb_base + SSCAON_CONFIG);
	val &= ~SSCAON_ENABLE;
	FUNC6(val, wcss->rmb_base + SSCAON_CONFIG);

	/* 8 - De-assert WCSS/Q6 HALTREQ */
	FUNC5(wcss->wcss_reset);

	return 0;
}