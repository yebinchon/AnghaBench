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
 int /*<<< orphan*/  DSS_DSI_CONTENT_GENERIC ; 
 int EIO ; 
 struct platform_device* FUNC0 (struct omap_dss_device*) ; 
 int FUNC1 (struct platform_device*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct platform_device*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct omap_dss_device*,int) ; 

__attribute__((used)) static int FUNC4(struct omap_dss_device *dssdev, int channel,
		u8 *reqdata, int reqlen, u8 *buf, int buflen)
{
	struct platform_device *dsidev = FUNC0(dssdev);
	int r;

	r = FUNC1(dsidev, channel, reqdata, reqlen);
	if (r)
		return r;

	r = FUNC3(dssdev, channel);
	if (r)
		return r;

	r = FUNC2(dsidev, channel, buf, buflen,
		DSS_DSI_CONTENT_GENERIC);
	if (r < 0)
		return r;

	if (r != buflen) {
		r = -EIO;
		return r;
	}

	return 0;
}