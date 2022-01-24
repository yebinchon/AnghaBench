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
struct dsi_data {scalar_t__ debug_read; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MIPI_DSI_DCS_READ ; 
 struct dsi_data* FUNC2 (struct platform_device*) ; 
 int FUNC3 (struct platform_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *dsidev,
		int channel, u8 dcs_cmd)
{
	struct dsi_data *dsi = FUNC2(dsidev);
	int r;

	if (dsi->debug_read)
		FUNC0("dsi_vc_dcs_send_read_request(ch%d, dcs_cmd %x)\n",
			channel, dcs_cmd);

	r = FUNC3(dsidev, channel, MIPI_DSI_DCS_READ, dcs_cmd, 0);
	if (r) {
		FUNC1("dsi_vc_dcs_send_read_request(ch %d, cmd 0x%02x)"
			" failed\n", channel, dcs_cmd);
		return r;
	}

	return 0;
}