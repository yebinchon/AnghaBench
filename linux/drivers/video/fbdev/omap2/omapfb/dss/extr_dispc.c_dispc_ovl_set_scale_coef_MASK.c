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
struct dispc_coef {int /*<<< orphan*/  hc4_vc22; int /*<<< orphan*/  hc0_vc00; int /*<<< orphan*/  hc3_vc2; int /*<<< orphan*/  hc2_vc1; int /*<<< orphan*/  hc1_vc0; } ;
typedef  enum omap_plane { ____Placeholder_omap_plane } omap_plane ;
typedef  enum omap_color_component { ____Placeholder_omap_color_component } omap_color_component ;

/* Variables and functions */
 int DISPC_COLOR_COMPONENT_RGB_Y ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 struct dispc_coef* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int) ; 

__attribute__((used)) static void FUNC8(enum omap_plane plane, int fir_hinc,
				int fir_vinc, int five_taps,
				enum omap_color_component color_comp)
{
	const struct dispc_coef *h_coef, *v_coef;
	int i;

	h_coef = FUNC1(fir_hinc, true);
	v_coef = FUNC1(fir_vinc, five_taps);

	for (i = 0; i < 8; i++) {
		u32 h, hv;

		h = FUNC0(h_coef[i].hc0_vc00, 7, 0)
			| FUNC0(h_coef[i].hc1_vc0, 15, 8)
			| FUNC0(h_coef[i].hc2_vc1, 23, 16)
			| FUNC0(h_coef[i].hc3_vc2, 31, 24);
		hv = FUNC0(h_coef[i].hc4_vc22, 7, 0)
			| FUNC0(v_coef[i].hc1_vc0, 15, 8)
			| FUNC0(v_coef[i].hc2_vc1, 23, 16)
			| FUNC0(v_coef[i].hc3_vc2, 31, 24);

		if (color_comp == DISPC_COLOR_COMPONENT_RGB_Y) {
			FUNC3(plane, i, h);
			FUNC5(plane, i, hv);
		} else {
			FUNC2(plane, i, h);
			FUNC4(plane, i, hv);
		}

	}

	if (five_taps) {
		for (i = 0; i < 8; i++) {
			u32 v;
			v = FUNC0(v_coef[i].hc0_vc00, 7, 0)
				| FUNC0(v_coef[i].hc4_vc22, 15, 8);
			if (color_comp == DISPC_COLOR_COMPONENT_RGB_Y)
				FUNC7(plane, i, v);
			else
				FUNC6(plane, i, v);
		}
	}
}