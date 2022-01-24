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
typedef  int u32 ;
struct platform_device {int dummy; } ;
struct dsi_data {int num_lanes_supported; TYPE_1__* lanes; } ;
struct TYPE_2__ {scalar_t__ function; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_DSIPHY_CFG5 ; 
 scalar_t__ DSI_LANE_UNUSED ; 
 int DSI_MAX_NR_LANES ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EIO ; 
 int /*<<< orphan*/  FEAT_DSI_REVERSE_TXCLKESC ; 
 struct dsi_data* FUNC1 (struct platform_device*) ; 
 int FUNC2 (struct platform_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *dsidev)
{
	struct dsi_data *dsi = FUNC1(dsidev);
	int t, i;
	bool in_use[DSI_MAX_NR_LANES];
	static const u8 offsets_old[] = { 28, 27, 26 };
	static const u8 offsets_new[] = { 24, 25, 26, 27, 28 };
	const u8 *offsets;

	if (FUNC3(FEAT_DSI_REVERSE_TXCLKESC))
		offsets = offsets_old;
	else
		offsets = offsets_new;

	for (i = 0; i < dsi->num_lanes_supported; ++i)
		in_use[i] = dsi->lanes[i].function != DSI_LANE_UNUSED;

	t = 100000;
	while (true) {
		u32 l;
		int ok;

		l = FUNC2(dsidev, DSI_DSIPHY_CFG5);

		ok = 0;
		for (i = 0; i < dsi->num_lanes_supported; ++i) {
			if (!in_use[i] || (l & (1 << offsets[i])))
				ok++;
		}

		if (ok == dsi->num_lanes_supported)
			break;

		if (--t == 0) {
			for (i = 0; i < dsi->num_lanes_supported; ++i) {
				if (!in_use[i] || (l & (1 << offsets[i])))
					continue;

				FUNC0("CIO TXCLKESC%d domain not coming " \
						"out of reset\n", i);
			}
			return -EIO;
		}
	}

	return 0;
}