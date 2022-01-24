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
struct omap_hdmi_audio_pdata {int version; int /*<<< orphan*/ * ops; int /*<<< orphan*/  audio_dma_addr; struct device* dev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  pdata ;
struct TYPE_2__ {int /*<<< orphan*/  audio_pdev; int /*<<< orphan*/  wp; } ;

/* Variables and functions */
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ hdmi ; 
 int /*<<< orphan*/  hdmi_audio_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,struct omap_hdmi_audio_pdata*,int) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct omap_hdmi_audio_pdata pdata = {
		.dev = dev,
		.version = 4,
		.audio_dma_addr = FUNC1(&hdmi.wp),
		.ops = &hdmi_audio_ops,
	};

	hdmi.audio_pdev = FUNC2(
		dev, "omap-hdmi-audio", PLATFORM_DEVID_AUTO,
		&pdata, sizeof(pdata));

	return FUNC0(hdmi.audio_pdev);
}