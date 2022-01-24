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
struct platform_device {int dummy; } ;
struct dsi_data {TYPE_1__* vc; } ;
typedef  enum dsi_vc_source { ____Placeholder_dsi_vc_source } dsi_vc_source ;
struct TYPE_2__ {int source; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DSI_VC_SOURCE_VP ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int EIO ; 
 int /*<<< orphan*/  FEAT_DSI_DCS_CMD_CONFIG_VC ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,int /*<<< orphan*/ ,int,int,int) ; 
 struct dsi_data* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,int,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct platform_device *dsidev, int channel,
		enum dsi_vc_source source)
{
	struct dsi_data *dsi = FUNC4(dsidev);

	if (dsi->vc[channel].source == source)
		return 0;

	FUNC1("Source config of virtual channel %d", channel);

	FUNC5(dsidev, channel);

	FUNC6(dsidev, channel, 0);

	/* VC_BUSY */
	if (FUNC8(dsidev, FUNC0(channel), 15, 0) != 0) {
		FUNC2("vc(%d) busy when trying to config for VP\n", channel);
		return -EIO;
	}

	/* SOURCE, 0 = L4, 1 = video port */
	FUNC3(dsidev, FUNC0(channel), source, 1, 1);

	/* DCS_CMD_ENABLE */
	if (FUNC7(FEAT_DSI_DCS_CMD_CONFIG_VC)) {
		bool enable = source == DSI_VC_SOURCE_VP;
		FUNC3(dsidev, FUNC0(channel), enable, 30, 30);
	}

	FUNC6(dsidev, channel, 1);

	dsi->vc[channel].source = source;

	return 0;
}