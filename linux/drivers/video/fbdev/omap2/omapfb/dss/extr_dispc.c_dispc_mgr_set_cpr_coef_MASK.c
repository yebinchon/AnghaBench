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
struct omap_dss_cpr_coefs {int /*<<< orphan*/  bb; int /*<<< orphan*/  bg; int /*<<< orphan*/  br; int /*<<< orphan*/  gb; int /*<<< orphan*/  gg; int /*<<< orphan*/  gr; int /*<<< orphan*/  rb; int /*<<< orphan*/  rg; int /*<<< orphan*/  rr; } ;
typedef  enum omap_channel { ____Placeholder_omap_channel } omap_channel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(enum omap_channel channel,
		const struct omap_dss_cpr_coefs *coefs)
{
	u32 coef_r, coef_g, coef_b;

	if (!FUNC5(channel))
		return;

	coef_r = FUNC3(coefs->rr, 31, 22) | FUNC3(coefs->rg, 20, 11) |
		FUNC3(coefs->rb, 9, 0);
	coef_g = FUNC3(coefs->gr, 31, 22) | FUNC3(coefs->gg, 20, 11) |
		FUNC3(coefs->gb, 9, 0);
	coef_b = FUNC3(coefs->br, 31, 22) | FUNC3(coefs->bg, 20, 11) |
		FUNC3(coefs->bb, 9, 0);

	FUNC4(FUNC2(channel), coef_r);
	FUNC4(FUNC1(channel), coef_g);
	FUNC4(FUNC0(channel), coef_b);
}