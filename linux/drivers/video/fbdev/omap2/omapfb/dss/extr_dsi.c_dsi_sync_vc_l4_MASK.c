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
struct platform_device {int dummy; } ;
struct dsi_packet_sent_handler_data {int /*<<< orphan*/ * completion; struct platform_device* dsidev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DSI_VC_IRQ_PACKET_SENT ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int EIO ; 
 scalar_t__ FUNC3 (struct platform_device*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  completion ; 
 int /*<<< orphan*/  dsi_packet_sent_handler_l4 ; 
 int FUNC4 (struct platform_device*,int,int /*<<< orphan*/ ,struct dsi_packet_sent_handler_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int,int /*<<< orphan*/ ,struct dsi_packet_sent_handler_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *dsidev, int channel)
{
	FUNC0(completion);
	struct dsi_packet_sent_handler_data l4_data = {
		.dsidev = dsidev,
		.completion = &completion
	};
	int r = 0;

	r = FUNC4(dsidev, channel, dsi_packet_sent_handler_l4,
		&l4_data, DSI_VC_IRQ_PACKET_SENT);
	if (r)
		goto err0;

	/* Wait for completion only if TX_FIFO_NOT_EMPTY is still set */
	if (FUNC3(dsidev, FUNC1(channel), 5, 5)) {
		if (FUNC7(&completion,
				FUNC6(10)) == 0) {
			FUNC2("Failed to complete previous l4 transfer\n");
			r = -EIO;
			goto err1;
		}
	}

	FUNC5(dsidev, channel, dsi_packet_sent_handler_l4,
		&l4_data, DSI_VC_IRQ_PACKET_SENT);

	return 0;
err1:
	FUNC5(dsidev, channel, dsi_packet_sent_handler_l4,
		&l4_data, DSI_VC_IRQ_PACKET_SENT);
err0:
	return r;
}