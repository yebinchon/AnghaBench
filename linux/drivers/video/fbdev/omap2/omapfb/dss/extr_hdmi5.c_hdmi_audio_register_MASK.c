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
struct omap_hdmi_audio_pdata {int version; int /*<<< orphan*/ * ops; int /*<<< orphan*/  audio_dma_addr; struct device* dev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  pdata ;
struct TYPE_3__ {int /*<<< orphan*/  base; } ;
struct TYPE_4__ {TYPE_1__ wp; int /*<<< orphan*/  wp_idlemode; int /*<<< orphan*/  audio_pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_WP_SYSCONFIG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 TYPE_2__ hdmi ; 
 int /*<<< orphan*/  hdmi_audio_ops ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int /*<<< orphan*/ ,struct omap_hdmi_audio_pdata*,int) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	struct omap_hdmi_audio_pdata pdata = {
		.dev = dev,
		.version = 5,
		.audio_dma_addr = FUNC5(&hdmi.wp),
		.ops = &hdmi_audio_ops,
	};

	hdmi.audio_pdev = FUNC6(
		dev, "omap-hdmi-audio", PLATFORM_DEVID_AUTO,
		&pdata, sizeof(pdata));

	if (FUNC0(hdmi.audio_pdev))
		return FUNC1(hdmi.audio_pdev);

	FUNC3();
	hdmi.wp_idlemode =
		FUNC2(hdmi.wp.base, HDMI_WP_SYSCONFIG, 3, 2);
	FUNC4();

	return 0;
}