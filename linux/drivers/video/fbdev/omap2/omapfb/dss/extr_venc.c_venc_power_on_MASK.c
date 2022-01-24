#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct omap_overlay_manager {int dummy; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_3__ {struct omap_overlay_manager* manager; } ;
struct TYPE_4__ {scalar_t__ type; int invert_polarity; int /*<<< orphan*/  vdda_dac_reg; int /*<<< orphan*/  timings; TYPE_1__ output; } ;

/* Variables and functions */
 scalar_t__ OMAP_DSS_VENC_TYPE_COMPOSITE ; 
 int /*<<< orphan*/  VENC_OUTPUT_CONTROL ; 
 int FUNC0 (struct omap_overlay_manager*) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_overlay_manager*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__ venc ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(struct omap_dss_device *dssdev)
{
	struct omap_overlay_manager *mgr = venc.output.manager;
	u32 l;
	int r;

	r = FUNC7();
	if (r)
		goto err0;

	FUNC6();
	FUNC10(FUNC9(&venc.timings));

	FUNC3(venc.type);
	FUNC2(1);

	l = 0;

	if (venc.type == OMAP_DSS_VENC_TYPE_COMPOSITE)
		l |= 1 << 1;
	else /* S-Video */
		l |= (1 << 0) | (1 << 2);

	if (venc.invert_polarity == false)
		l |= 1 << 3;

	FUNC11(VENC_OUTPUT_CONTROL, l);

	FUNC1(mgr, &venc.timings);

	r = FUNC5(venc.vdda_dac_reg);
	if (r)
		goto err1;

	r = FUNC0(mgr);
	if (r)
		goto err2;

	return 0;

err2:
	FUNC4(venc.vdda_dac_reg);
err1:
	FUNC11(VENC_OUTPUT_CONTROL, 0);
	FUNC2(0);

	FUNC8();
err0:
	return r;
}