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
struct ufs_hba {int /*<<< orphan*/  dev; int /*<<< orphan*/  dev_ref_clk_freq; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REF_CLK_FREQ_INVAL ; 
 unsigned long FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

void FUNC3(struct ufs_hba *hba, struct clk *refclk)
{
	unsigned long freq;

	freq = FUNC0(refclk);

	hba->dev_ref_clk_freq =
		FUNC2(freq);

	if (hba->dev_ref_clk_freq == REF_CLK_FREQ_INVAL)
		FUNC1(hba->dev,
		"invalid ref_clk setting = %ld\n", freq);
}