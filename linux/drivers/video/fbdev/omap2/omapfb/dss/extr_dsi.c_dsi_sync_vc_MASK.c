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
struct TYPE_2__ {int source; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  DSI_VC_SOURCE_L4 129 
#define  DSI_VC_SOURCE_VP 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*) ; 
 struct dsi_data* FUNC3 (struct platform_device*) ; 
 int FUNC4 (struct platform_device*,int) ; 
 int FUNC5 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,int) ; 
 int FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct platform_device *dsidev, int channel)
{
	struct dsi_data *dsi = FUNC3(dsidev);

	FUNC1(!FUNC2(dsidev));

	FUNC1(FUNC7());

	if (!FUNC6(dsidev, channel))
		return 0;

	switch (dsi->vc[channel].source) {
	case DSI_VC_SOURCE_VP:
		return FUNC5(dsidev, channel);
	case DSI_VC_SOURCE_L4:
		return FUNC4(dsidev, channel);
	default:
		FUNC0();
		return -EINVAL;
	}
}