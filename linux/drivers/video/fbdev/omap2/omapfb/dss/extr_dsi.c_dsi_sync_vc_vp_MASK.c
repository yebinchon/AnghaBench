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
typedef  int u8 ;
struct platform_device {int dummy; } ;
struct dsi_packet_sent_handler_data {int /*<<< orphan*/ * completion; struct platform_device* dsidev; } ;
struct dsi_data {scalar_t__ te_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DSI_VC_IRQ_PACKET_SENT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int EIO ; 
 scalar_t__ FUNC3 (struct platform_device*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  completion ; 
 struct dsi_data* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  dsi_packet_sent_handler_vp ; 
 int FUNC5 (struct platform_device*,int,int /*<<< orphan*/ ,struct dsi_packet_sent_handler_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,int,int /*<<< orphan*/ ,struct dsi_packet_sent_handler_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct platform_device *dsidev, int channel)
{
	struct dsi_data *dsi = FUNC4(dsidev);
	FUNC0(completion);
	struct dsi_packet_sent_handler_data vp_data = {
		.dsidev = dsidev,
		.completion = &completion
	};
	int r = 0;
	u8 bit;

	bit = dsi->te_enabled ? 30 : 31;

	r = FUNC5(dsidev, channel, dsi_packet_sent_handler_vp,
		&vp_data, DSI_VC_IRQ_PACKET_SENT);
	if (r)
		goto err0;

	/* Wait for completion only if TE_EN/TE_START is still set */
	if (FUNC3(dsidev, FUNC1(channel), bit, bit)) {
		if (FUNC8(&completion,
				FUNC7(10)) == 0) {
			FUNC2("Failed to complete previous frame transfer\n");
			r = -EIO;
			goto err1;
		}
	}

	FUNC6(dsidev, channel, dsi_packet_sent_handler_vp,
		&vp_data, DSI_VC_IRQ_PACKET_SENT);

	return 0;
err1:
	FUNC6(dsidev, channel, dsi_packet_sent_handler_vp,
		&vp_data, DSI_VC_IRQ_PACKET_SENT);
err0:
	return r;
}