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
struct dss_lcd_mgr_config {int /*<<< orphan*/  lcden_sig_polarity; int /*<<< orphan*/  video_port_width; int /*<<< orphan*/  clock_info; int /*<<< orphan*/  fifohandcheck; int /*<<< orphan*/  stallmode; int /*<<< orphan*/  io_pad_mode; } ;
typedef  enum omap_channel { ____Placeholder_omap_channel } omap_channel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

void FUNC7(enum omap_channel channel,
		const struct dss_lcd_mgr_config *config)
{
	FUNC4(config->io_pad_mode);

	FUNC2(channel, config->stallmode);
	FUNC1(channel, config->fifohandcheck);

	FUNC3(channel, &config->clock_info);

	FUNC6(channel, config->video_port_width);

	FUNC0(config->lcden_sig_polarity);

	FUNC5(channel);
}