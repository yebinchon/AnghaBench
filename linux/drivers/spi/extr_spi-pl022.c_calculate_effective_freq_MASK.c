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
typedef  void* u8 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct ssp_clock_params {int cpsdvsr; int scr; } ;
struct pl022 {TYPE_1__* adev; int /*<<< orphan*/  clk; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CPSDVR_MAX ; 
 scalar_t__ CPSDVR_MIN ; 
 int EINVAL ; 
 scalar_t__ SCR_MAX ; 
 scalar_t__ SCR_MIN ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC5 (int,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct pl022 *pl022, int freq, struct
				    ssp_clock_params * clk_freq)
{
	/* Lets calculate the frequency parameters */
	u16 cpsdvsr = CPSDVR_MIN, scr = SCR_MIN;
	u32 rate, max_tclk, min_tclk, best_freq = 0, best_cpsdvsr = 0,
		best_scr = 0, tmp, found = 0;

	rate = FUNC1(pl022->clk);
	/* cpsdvscr = 2 & scr 0 */
	max_tclk = FUNC5(rate, CPSDVR_MIN, SCR_MIN);
	/* cpsdvsr = 254 & scr = 255 */
	min_tclk = FUNC5(rate, CPSDVR_MAX, SCR_MAX);

	if (freq > max_tclk)
		FUNC4(&pl022->adev->dev,
			"Max speed that can be programmed is %d Hz, you requested %d\n",
			max_tclk, freq);

	if (freq < min_tclk) {
		FUNC3(&pl022->adev->dev,
			"Requested frequency: %d Hz is less than minimum possible %d Hz\n",
			freq, min_tclk);
		return -EINVAL;
	}

	/*
	 * best_freq will give closest possible available rate (<= requested
	 * freq) for all values of scr & cpsdvsr.
	 */
	while ((cpsdvsr <= CPSDVR_MAX) && !found) {
		while (scr <= SCR_MAX) {
			tmp = FUNC5(rate, cpsdvsr, scr);

			if (tmp > freq) {
				/* we need lower freq */
				scr++;
				continue;
			}

			/*
			 * If found exact value, mark found and break.
			 * If found more closer value, update and break.
			 */
			if (tmp > best_freq) {
				best_freq = tmp;
				best_cpsdvsr = cpsdvsr;
				best_scr = scr;

				if (tmp == freq)
					found = 1;
			}
			/*
			 * increased scr will give lower rates, which are not
			 * required
			 */
			break;
		}
		cpsdvsr += 2;
		scr = SCR_MIN;
	}

	FUNC0(!best_freq, "pl022: Matching cpsdvsr and scr not found for %d Hz rate \n",
			freq);

	clk_freq->cpsdvsr = (u8) (best_cpsdvsr & 0xFF);
	clk_freq->scr = (u8) (best_scr & 0xFF);
	FUNC2(&pl022->adev->dev,
		"SSP Target Frequency is: %u, Effective Frequency is %u\n",
		freq, best_freq);
	FUNC2(&pl022->adev->dev, "SSP cpsdvsr = %d, scr = %d\n",
		clk_freq->cpsdvsr, clk_freq->scr);

	return 0;
}