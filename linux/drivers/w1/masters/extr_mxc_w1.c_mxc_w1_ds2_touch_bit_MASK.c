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
struct mxc_w1_device {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ MXC_W1_CONTROL ; 
 int MXC_W1_CONTROL_RDST ; 
 int FUNC0 (int) ; 
 unsigned long jiffies ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 unsigned long FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static u8 FUNC6(void *data, u8 bit)
{
	struct mxc_w1_device *dev = data;
	unsigned long timeout;

	FUNC5(FUNC0(bit), dev->regs + MXC_W1_CONTROL);

	/* Wait for read/write bit (60us, Max 120us), use 200us for sure */
	timeout = jiffies + FUNC4(200);

	FUNC3(60);

	do {
		u8 ctrl = FUNC1(dev->regs + MXC_W1_CONTROL);

		/* RDST bit is valid after the WR1/RD bit is self-cleared */
		if (!(ctrl & FUNC0(bit)))
			return !!(ctrl & MXC_W1_CONTROL_RDST);
	} while (FUNC2(timeout));

	return 0;
}