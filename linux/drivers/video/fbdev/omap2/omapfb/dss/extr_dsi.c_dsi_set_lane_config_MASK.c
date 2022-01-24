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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct platform_device {int dummy; } ;
struct dsi_data {int num_lanes_used; unsigned int num_lanes_supported; TYPE_1__* lanes; } ;
typedef  enum dsi_lane_function { ____Placeholder_dsi_lane_function } dsi_lane_function ;
struct TYPE_2__ {int const function; unsigned int polarity; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_COMPLEXIO_CFG1 ; 
#define  DSI_LANE_CLK 132 
#define  DSI_LANE_DATA1 131 
#define  DSI_LANE_DATA2 130 
#define  DSI_LANE_DATA3 129 
#define  DSI_LANE_DATA4 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int) ; 
 struct dsi_data* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *dsidev)
{
	struct dsi_data *dsi = FUNC1(dsidev);
	static const u8 offsets[] = { 0, 4, 8, 12, 16 };
	static const enum dsi_lane_function functions[] = {
		DSI_LANE_CLK,
		DSI_LANE_DATA1,
		DSI_LANE_DATA2,
		DSI_LANE_DATA3,
		DSI_LANE_DATA4,
	};
	u32 r;
	int i;

	r = FUNC2(dsidev, DSI_COMPLEXIO_CFG1);

	for (i = 0; i < dsi->num_lanes_used; ++i) {
		unsigned offset = offsets[i];
		unsigned polarity, lane_number;
		unsigned t;

		for (t = 0; t < dsi->num_lanes_supported; ++t)
			if (dsi->lanes[t].function == functions[i])
				break;

		if (t == dsi->num_lanes_supported)
			return -EINVAL;

		lane_number = t;
		polarity = dsi->lanes[t].polarity;

		r = FUNC0(r, lane_number + 1, offset + 2, offset);
		r = FUNC0(r, polarity, offset + 3, offset + 3);
	}

	/* clear the unused lanes */
	for (; i < dsi->num_lanes_supported; ++i) {
		unsigned offset = offsets[i];

		r = FUNC0(r, 0, offset + 2, offset);
		r = FUNC0(r, 0, offset + 3, offset + 3);
	}

	FUNC3(dsidev, DSI_COMPLEXIO_CFG1, r);

	return 0;
}