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
struct meson_gx_pwrc_vpu {int /*<<< orphan*/  vpu_clk; int /*<<< orphan*/  vapb_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct meson_gx_pwrc_vpu *pd)
{
	int ret;

	ret = FUNC1(pd->vpu_clk);
	if (ret)
		return ret;

	ret = FUNC1(pd->vapb_clk);
	if (ret)
		FUNC0(pd->vpu_clk);

	return ret;
}