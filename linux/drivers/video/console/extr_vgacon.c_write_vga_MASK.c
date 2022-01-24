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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  vga_lock ; 
 int /*<<< orphan*/  vga_video_port_reg ; 

__attribute__((used)) static inline void FUNC3(unsigned char reg, unsigned int val)
{
	unsigned int v1, v2;
	unsigned long flags;

	/*
	 * ddprintk might set the console position from interrupt
	 * handlers, thus the write has to be IRQ-atomic.
	 */
	FUNC1(&vga_lock, flags);
	v1 = reg + (val & 0xff00);
	v2 = reg + 1 + ((val << 8) & 0xff00);
	FUNC0(v1, vga_video_port_reg);
	FUNC0(v2, vga_video_port_reg);
	FUNC2(&vga_lock, flags);
}