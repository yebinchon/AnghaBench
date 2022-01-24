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
struct wl1251 {int dummy; } ;
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  EE_ADDR ; 
 int /*<<< orphan*/  EE_CTL ; 
 int EE_CTL_READ ; 
 int /*<<< orphan*/  EE_DATA ; 
 int ETIMEDOUT ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 
 int FUNC3 (struct wl1251*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wl1251*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct wl1251 *wl, off_t offset, u8 *data)
{
	unsigned long timeout;

	FUNC4(wl, EE_ADDR, offset);
	FUNC4(wl, EE_CTL, EE_CTL_READ);

	/* EE_CTL_READ clears when data is ready */
	timeout = jiffies + FUNC0(100);
	while (1) {
		if (!(FUNC3(wl, EE_CTL) & EE_CTL_READ))
			break;

		if (FUNC2(jiffies, timeout))
			return -ETIMEDOUT;

		FUNC1(1);
	}

	*data = FUNC3(wl, EE_DATA);
	return 0;
}