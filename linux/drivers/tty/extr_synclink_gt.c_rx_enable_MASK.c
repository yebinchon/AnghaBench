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
struct slgt_info {unsigned int rbuf_fill_level; int rx_pio; int /*<<< orphan*/  lock; scalar_t__ rx_enabled; int /*<<< orphan*/  device_name; } ;

/* Variables and functions */
 int BIT3 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned int DMABUFSIZE ; 
 int EINVAL ; 
 int /*<<< orphan*/  RCR ; 
 int FUNC1 (struct slgt_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct slgt_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct slgt_info *info, int enable)
{
 	unsigned long flags;
	unsigned int rbuf_fill_level;
	FUNC0(("%s rx_enable(%08x)\n", info->device_name, enable));
	FUNC4(&info->lock,flags);
	/*
	 * enable[31..16] = receive DMA buffer fill level
	 * 0 = noop (leave fill level unchanged)
	 * fill level must be multiple of 4 and <= buffer size
	 */
	rbuf_fill_level = ((unsigned int)enable) >> 16;
	if (rbuf_fill_level) {
		if ((rbuf_fill_level > DMABUFSIZE) || (rbuf_fill_level % 4)) {
			FUNC5(&info->lock, flags);
			return -EINVAL;
		}
		info->rbuf_fill_level = rbuf_fill_level;
		if (rbuf_fill_level < 128)
			info->rx_pio = 1; /* PIO mode */
		else
			info->rx_pio = 0; /* DMA mode */
		FUNC3(info); /* restart receiver to use new fill level */
	}

	/*
	 * enable[1..0] = receiver enable command
	 * 0 = disable
	 * 1 = enable
	 * 2 = enable or force hunt mode if already enabled
	 */
	enable &= 3;
	if (enable) {
		if (!info->rx_enabled)
			FUNC2(info);
		else if (enable == 2) {
			/* force hunt mode (write 1 to RCR[3]) */
			FUNC6(info, RCR, FUNC1(info, RCR) | BIT3);
		}
	} else {
		if (info->rx_enabled)
			FUNC3(info);
	}
	FUNC5(&info->lock,flags);
	return 0;
}