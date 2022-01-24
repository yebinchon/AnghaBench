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
typedef  int u32 ;
struct venc_config {int bstamp_wss_data; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {int wss_data; int /*<<< orphan*/  venc_lock; int /*<<< orphan*/  timings; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  VENC_BSTAMP_WSS_DATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__ venc ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct venc_config* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct omap_dss_device *dssdev, u32 wss)
{
	const struct venc_config *config;
	int r;

	FUNC0("venc_set_wss\n");

	FUNC1(&venc.venc_lock);

	config = FUNC5(&venc.timings);

	/* Invert due to VENC_L21_WC_CTL:INV=1 */
	venc.wss_data = (wss ^ 0xfffff) << 8;

	r = FUNC3();
	if (r)
		goto err;

	FUNC6(VENC_BSTAMP_WSS_DATA, config->bstamp_wss_data |
			venc.wss_data);

	FUNC4();

err:
	FUNC2(&venc.venc_lock);

	return r;
}