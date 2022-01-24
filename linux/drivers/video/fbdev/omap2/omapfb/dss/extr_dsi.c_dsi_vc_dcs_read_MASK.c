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
typedef  int /*<<< orphan*/  u8 ;
struct platform_device {int dummy; } ;
struct omap_dss_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DSS_DSI_CONTENT_DCS ; 
 int EIO ; 
 struct platform_device* FUNC1 (struct omap_dss_device*) ; 
 int FUNC2 (struct platform_device*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct platform_device*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct omap_dss_device*,int) ; 

__attribute__((used)) static int FUNC5(struct omap_dss_device *dssdev, int channel, u8 dcs_cmd,
		u8 *buf, int buflen)
{
	struct platform_device *dsidev = FUNC1(dssdev);
	int r;

	r = FUNC2(dsidev, channel, dcs_cmd);
	if (r)
		goto err;

	r = FUNC4(dssdev, channel);
	if (r)
		goto err;

	r = FUNC3(dsidev, channel, buf, buflen,
		DSS_DSI_CONTENT_DCS);
	if (r < 0)
		goto err;

	if (r != buflen) {
		r = -EIO;
		goto err;
	}

	return 0;
err:
	FUNC0("dsi_vc_dcs_read(ch %d, cmd 0x%02x) failed\n", channel, dcs_cmd);
	return r;
}