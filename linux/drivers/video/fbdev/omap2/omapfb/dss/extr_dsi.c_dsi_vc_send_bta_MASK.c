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
struct dsi_data {scalar_t__ debug_read; scalar_t__ debug_write; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ FUNC4 (struct platform_device*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*) ; 
 struct dsi_data* FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,int) ; 

__attribute__((used)) static int FUNC10(struct platform_device *dsidev, int channel)
{
	struct dsi_data *dsi = FUNC7(dsidev);

	if (dsi->debug_write || dsi->debug_read)
		FUNC1("dsi_vc_send_bta %d\n", channel);

	FUNC5(!FUNC6(dsidev));

	/* RX_FIFO_NOT_EMPTY */
	if (FUNC4(dsidev, FUNC0(channel), 20, 20)) {
		FUNC2("rx fifo not empty when sending BTA, dumping data:\n");
		FUNC9(dsidev, channel);
	}

	FUNC3(dsidev, FUNC0(channel), 1, 6, 6); /* BTA_EN */

	/* flush posted write */
	FUNC8(dsidev, FUNC0(channel));

	return 0;
}